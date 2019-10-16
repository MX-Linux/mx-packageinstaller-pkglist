#!/bin/bash

# libreoffice installer
# to install a set of default libreoffice packages
# from default debian repo or up-/downgrade to/from debian backports
#  vers 2019-10-16.2

this="${0##*/}"

# debian distro codename
IFS='=' read _ distro < <( grep '^VERSION_CODENAME=' /etc/os-release)

# dpl - default package list
dpl="
     libreoffice-base    libreoffice-calc libreoffice-draw
     libreoffice-impress libreoffice-math libreoffice-writer
     libreoffice-gnome   libreoffice-gtk3
     "
# dll - default 'lib' list
dll="fonts-opensymbol uno-libs3 ure"

usage () {
  echo  "Usage: $this [-b | -d | -h | -r  | -x ]  libreoffice-packges...
  -b, --backports    force backports install 
  -d, --distro       force distribution install - downgrade from backports
  -h, --help         show help info
  -r, --reinstall    reinstall packages
  -x, --extra        install extra libreoffice-packages in addition to default package list
  "
  [ -z "$1" ] && exit 1
}
help () {
  echo "LibreOffice installer"  
  usage help
  echo  "Default libreoffice-packages list: $dpl
  To install default libreoffice packages run:
     $this
  To install in addition to default list run 
     $this -x aditional libreoffice packages
  Example: 
     $this -x libreoffice-help-de
  To install only a specifc package list run
     $this specific_libreoffice_packages
     This will replace the default packages with the specific package list.
  Example: 
     $this libreoffice-writer libreoffice-help-de
     This will install only writer and help.
  To install libroffice packages from ${ditribution}-backports run
     $this --distro   
  To downgrade installed libroffice packages from ${distro}-backports 
     $this --backports   
Note: All package names to be installed have to start with 'libreoffice'.
 
  "
  exit 1
        
}

main() {

   pl=""
   check_cli "$@"
   if [ -n "$DEBUG" ]; then
   echo "#--------------------"
   echo "LibreOffice Installer"
   echo "#--------------------"
   echo "force : " $force
   echo "extra : " $extra
   echo "x_list: " "$pl"
   echo "p_list: $p_list"
   fi
   # [ -n "$extra" ] && dll=""

   apt-get update

   case "$(pkg_distro_target)" in
      *-backports)  
        echo install_backports $p_list $dll
        install_backports $p_list $dll
        ;;
      *)  echo install_${distro}  $p_list $dll
        install_distro  $p_list $dll
        ;;
   esac
}

check_cli() {

   # this needs run as root
   euid=$(id -u)
   if test "$euid" != 0; then
      printf 'This command needs %s privileges to be executed.\n' "root"
      exit 1
   fi
    
   force="";     reinstall="";     extra=""
   
   while [ ${#} -gt 0 ]; do
      case "$1" in
         -d|--distro    ) force="${distro}";;
         -b|--backports ) force="${distro}-backports";;
         -h|--help      ) help;;
         -r|--reinstall ) reinstall="--reinstall";;
         -x|--extra     ) extra="true";;
         -[dbhrx]?*     ) i="$1"; shift;  set -- $(echo "$i" |sed 's/^-//; s/./ -&/g') "$@";continue;;
         libreoffice*   ) pl+="$1 ";; 
         -\?            ) usage;; 
         -*             ) croak "Unsupportert option: '$1'"; usage;;
         *              ) fatal "Supported packagename pattern 'libreoffice*' - failed: $1";;
      esac
      shift
   done
   if [ -n "$extra" ] && [ -z "$pl" ]; then
      echo "Fatal: No libreoffice packages given to install" ; exit 1;
   fi
   if [ -n "$DEBUG" ]; then
      [ -n "$extra" ] && echo "extra:$(echo $dpl) $pl"
      [ -z "$extra" ] && echo "$pl"
   fi
   
   
   p_list="$pl"
   if [ -z "$extra" ] && [ -z "$pl" ]; then
      p_list="$dpl"
   fi
   if [ -n "$extra" ]; then
      declare -A pla
      for p in $dpl $pl; do pla[$p]=1;  done
      p_list="${!pla[*]}"
   fi
   
   if [ -z "$p_list" ] ; then
      usage;
   fi
}

pkg_is_installed() {
   local chk_pkg="${1:-libreoffice-core}"
   case $(dpkg-query -W -f '${db:Status-Status}' ${chk_pkg} 2>/dev/null) in
      installed    ) return 0;;
      not-installed) return 1;;
   esac
}

pkg_installed_version() {
   local chk_pkg="${1:-libreoffice-core}"
   pkg_installed_version=$(dpkg-query -W -f '${Version}' ${chk_pkg} 2>/dev/null)
   echo "$pkg_installed_version"
}
pkg_candidate_version() {
   local chk_pkg="${1:-libreoffice-core}"
   read _ pkg_candidate_version < <(LANG=C apt-cache policy ${chk_pkg} | grep 'Candidate:' 2>/dev/null)
   echo "$pkg_candidate_version"
}


pkg_distro_target() {
   [ -n "${force}" ] && echo "${force}"             && return
   backports_enabled && echo "${distro}-backports"  && return
   
   local chk_pkg="${1:-libreoffice-core}"
   pkg_candidate_target=""
   [ -z "$(pkg_candidate_version)" ] && fatal "No libroffice candiate version found"
   if apt-cache madison ${chk_pkg} | grep "$(pkg_candidate_version)" | grep -sq "\s${distro}/"; then
      echo "${distro}"
   else
      echo "${distro}-backports"
   fi
}

backports_enabled() {
    if sed  -re '/^[[:space:]]*#/d; /^[[:space:]]*deb[[:space:]]+/!d' /etc/apt/sources.list{,.d/*.list} \
       | grep -sqE  "/debian\s\s*${distro}-backports(\s|/)"; then
       return 0
    else
       return 1
    fi
}
    
## check this:
if [ -n "$DEBUG" ]; then
   echo $distro
   if pkg_is_installed;  then echo pkg_is_installed ; fi
   if pkg_is_installed;  then echo $(pkg_installed_version) ; fi
   if pkg_is_installed;  then echo $(pkg_candidate_version) ; fi
   if backports_enabled; then echo backports_enabled; else echo backports not enabled ; fi
   echo pkg_distro_target $(pkg_distro_target)
fi

install_backports() {
   local pkg_list="$*"
   local cfg_source=""
   if ! backports_enabled; then
      tmp_source_list="$(mktemp -t apt_tmp_sources_list.XXXXXXXXXXXX)"
      chmod 644 ${tmp_source_list} 
      echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" > ${tmp_source_list}
      cfg_source="-o Dir::Etc::sourcelist=${tmp_source_list}"
      cfg_update="-o Dir::Etc::sourceparts=- -o APT::Get::List-Cleanup=0"
      apt-get ${cfg_source} ${cfg_update} update
   fi
   tmp_preferences="$(mktemp -t apt_tmp_preferences.XXXXXXXXXXXX)"
   chmod 644 ${tmp_preferences}
   printf  'Package: *\nPin: release n=buster-backports\nPin-Priority: 1001\n' > ${tmp_preferences}
   cfg_pref="-o Dir::Etc::preferences=${tmp_preferences}";
   apt-get -o=Dpkg::Use-Pty=0 ${cfg_source} ${cfg_pref}  install ${pkg_list} ${reinstall}
   rm ${tmp_source_list} ${tmp_preferences} 2>/dev/null
}
    
install_distro() {
   local pkg_list="$*"
   local cfg_source=""
   tmp_preferences="$(mktemp -t apt_tmp_preferences.XXXXXXXXXXXX)"
   chmod 644 ${tmp_preferences}
   printf  'Package: *\nPin: release n=buster\nPin-Priority: 1001\n' > ${tmp_preferences}
   cfg_pref="-o Dir::Etc::preferences=${tmp_preferences}";
   apt-get -o=Dpkg::Use-Pty=0 ${cfg_pref} install ${pkg_list} ${reinstall}
   rm ${tmp_preferences} 2>/dev/null
}

# 
fatal() { echo "Fatal:" "$@"; exit 1; }
croak() { echo "Fatal:" "$@"; exit 1; }

main "$@"
              
exit
