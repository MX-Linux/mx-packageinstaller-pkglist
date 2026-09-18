#!/bin/bash
# Part of MX Package Installer's mx-packageinstaller-pkglist.
# Purpose: shared repo/daemon bootstrap and cleanup logic for the "Proton VPN
# CLI"/"Proton VPN GUI" entries. Called by either .pm with a stage name; not
# meant to be run manually.

usage() {
    cat <<'EOF'
protonvpn.sh - install/upgrade/uninstall helper for Proton VPN (MX Package Installer)

Usage: protonvpn.sh preinstall {cli|gui}
       protonvpn.sh postinstall
       protonvpn.sh postuninstall {cli|gui}

Called by MX Package Installer's "Proton VPN CLI"/"Proton VPN GUI" entries
(protonvpn-cli.pm/protonvpn-gui.pm). Not intended to be run directly.
EOF
}

INITHELPER=/usr/share/mx-packageinstaller-pkglist/proton-vpn-daemon_sysvinit_helper.sh
REPO_BASE=https://repo.protonvpn.com/debian

do_preinstall() {
SCOPE="${1:-}"

export DEBIAN_FRONTEND=noninteractive

TMP_DIR=$(mktemp -d /tmp/mxpi-protonvpn-installer.XXXXXXXXXX)
tidy_up() { rm -r /tmp/mxpi-protonvpn-installer.* 2>/dev/null ; }
trap tidy_up EXIT
# apt's sandboxed download runs as _apt; needs write access to this dir.
chown _apt "$TMP_DIR"
pushd $TMP_DIR >/dev/null

# Chicken-and-egg: fetch the repo's Packages index directly to find the release .deb.
curl -sL "$REPO_BASE/dists/stable/main/binary-all/Packages" -o Packages
RELPATH=$(grep -E "^Filename: .*/protonvpn-stable-release.*\.deb" Packages | cut -d' ' -f2 | sort -rV | head -n1)
if [ -z "$RELPATH" ]; then
   echo "ERROR: could not determine protonvpn-stable-release package from $REPO_BASE/dists/stable/main/binary-all/Packages"
   popd >/dev/null
   exit 1
fi
REL_URL="$REPO_BASE/$RELPATH"
echo " "
echo "Downloading ... ${RELPATH##*/}"
echo "curl -RLJO $REL_URL"
echo " "
curl -RLJO "$REL_URL"
sleep 0.3
echo
echo
RELDEB=${RELPATH##*/}
if [ ! -r "$RELDEB" ]; then
   echo "Error downloading $RELDEB"
   popd >/dev/null
   exit 1
fi

apt-get install -y "./$RELDEB"
apt-get update

# Pre-install proton-vpn-daemon's dependencies only, filtered out of the Inst list.
DEP=$(apt-get -s --no-install-recommends install proton-vpn-daemon 2>/dev/null | awk '$1 == "Inst" && $2 != "proton-vpn-daemon" { print $2 }')
if [ -n "$DEP" ]; then
   apt-get install -y --mark-auto $DEP
fi

# Download only - patched before dpkg unpacks/configures it below.
apt-get download proton-vpn-daemon
DEB=$(ls proton-vpn-daemon_*.deb 2>/dev/null | head -1)
if [ -z "$DEB" ]; then
   echo "ERROR: could not download proton-vpn-daemon"
   popd >/dev/null
   exit 1
fi

patch_protonvpn_shim() {
for F in /var/lib/dpkg/info/proton-vpn-daemon.p*; do
   [ -f "$F" ] || continue
   grep -qF "source $INITHELPER" "$F" 2>/dev/null && continue
   # Insert shebang+source ahead of line 1 rather than replace it.
   sed -i -e '1i#!/bin/bash' -e "1itest -r $INITHELPER && source $INITHELPER" "$F"
done
}

if ls /var/lib/dpkg/info/proton-vpn-daemon.p* >/dev/null 2>&1; then
   patch_protonvpn_shim
fi

dpkg --unpack "$DEB"

# Patch again for the freshly-unpacked pristine scripts.
patch_protonvpn_shim

for SRV in /usr/lib/systemd/system/me.proton.vpn.*.service /usr/lib/systemd/system/proton-vpn-*.service; do
   [ -f "$SRV" ] || continue
   INIT=${SRV%.service}; INIT=${INIT##*/}
   sysd2v.sh "$SRV" | sed "s/${INIT}-sysd2v.pid/${INIT}.pid/" > /etc/init.d/$INIT
   chmod 755 /etc/init.d/$INIT
done

dpkg --configure proton-vpn-daemon
apt-get install -yf

# Mark auto so removing the CLI/GUI later cleans up the daemon too.
apt-mark auto proton-vpn-daemon

# Install the actual frontend here (not via <install_package_names>) so MXPI
# doesn't pop up a second confirmation mid-flow.
case "$SCOPE" in
   cli) apt-get install -y proton-vpn-cli ;;
   gui) apt-get install -y proton-vpn-gnome-desktop proton-vpn-cli ;;
esac

# Split tunneling is a separate entry - see protonvpn-splittunnel.pm/.sh.
echo "...$(gettext -d apt -s ' Done')!"

}

do_postinstall() {

# Repo left enabled regardless of init (unlike Mullvad) - explicit user decision.
:

}

do_postuninstall() {
SCOPE="${1:-}"

case "$SCOPE" in
   cli) apt-get -y purge proton-vpn-cli 2>/dev/null ;;
   gui) apt-get -y purge proton-vpn-gnome-desktop proton-vpn-gtk-app 2>/dev/null ;;
esac

# Daemon/repo teardown only once neither frontend is still installed.
if ! dpkg -l proton-vpn-cli 2>/dev/null | grep -sq '^ii' \
   && ! dpkg -l proton-vpn-gnome-desktop 2>/dev/null | grep -sq '^ii'; then

apt-get -y purge proton-vpn-daemon 2>/dev/null

for INIT in /etc/init.d/me.proton.vpn.* /etc/init.d/proton-vpn-*; do
    [ -e "$INIT" ] || continue
    update-rc.d -f "${INIT##*/}" remove 2>/dev/null
    rm -f "$INIT"
done
find /etc/systemd/system -mindepth 2 -maxdepth 2 -iname 'me.proton.vpn.*' -delete 2>/dev/null
find /etc/systemd/system -mindepth 2 -maxdepth 2 -iname 'proton-vpn-*' -delete 2>/dev/null
find /etc/systemd/system -mindepth 1 -maxdepth 1 -type d -name '*.wants' -empty -delete 2>/dev/null

apt-get -y purge 'protonvpn-*-release' 2>/dev/null
apt-get update

fi

# User-enabled "start on login" autostart entry.
for f in /home/*/.config/autostart/proton.vpn.app.gtk.desktop /root/.config/autostart/proton.vpn.app.gtk.desktop; do
   [ -e "$f" ] || [ -L "$f" ] && rm -f "$f"
done

echo "...$(gettext -d apt -s ' Done')!"

}

case "${1:-}" in
    preinstall)     do_preinstall "${2:-}" ;;
    postinstall)    do_postinstall ;;
    postuninstall)  do_postuninstall "${2:-}" ;;
    *) usage; exit 1 ;;
esac
