<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Desktop Environments
</category>

<name>
Xfce
</name>

<description>
Xfce (MX Linux)
</description>

<installable>
all
</installable>

<screenshot></screenshot>

<preinstall>

</preinstall>

<install_package_names>
desktop-defaults-mx-xfce
mx23-artwork
xfce-superkey-mx
xfce4-appfinder
xfce4-battery-plugin
xfce4-clipman
xfce4-cpufreq-plugin
xfce4-cpugraph-plugin
xfce4-datetime-plugin
xfce4-diskperf-plugin
xfce4-docklike-plugin
xfce4-fsguard-plugin
xfce4-genmon-plugin
xfce4-mount-plugin
xfce4-netload-plugin
xfce4-notes
xfce4-notes-plugin
xfce4-notifyd
xfce4-panel
xfce4-places-plugin
xfce4-power-manager
xfce4-power-manager-data
xfce4-power-manager-plugins
xfce4-pulseaudio-plugin
xfce4-screenshooter
xfce4-sensors-plugin
xfce4-session
xfce4-settings
xfce4-smartbookmark-plugin
xfce4-systemload-plugin
xfce4-taskmanager
xfce4-terminal
xfce4-timer-plugin
xfce4-verve-plugin
xfce4-wavelan-plugin
xfce4-weather-plugin
xfce4-whiskermenu-plugin
xfce4-xkb-plugin
xfwm4
xfconf
xfdesktop4
xfdesktop4-data
thunar-archive-plugin
thunar-shares-plugin
thunar-data
thunar-gtkhash
thunar-volman
thunar-custom-actions-mx
mx-comfort-themes

</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
desktop-defaults-mx-xfce-desktop
desktop-defaultx-mx-xfce-system
xfce-superkey-mx
xfce4-appfinder
xfce4-battery-plugin
xfce4-clipman
xfce4-cpufreq-plugin
xfce4-cpugraph-plugin
xfce4-datetime-plugin
xfce4-diskperf-plugin
xfce4-docklike-plugin
xfce4-fsguard-plugin
xfce4-genmon-plugin
xfce4-mount-plugin
xfce4-netload-plugin
xfce4-notes
xfce4-notes-plugin
xfce4-notifyd
xfce4-panel
xfce4-places-plugin
xfce4-power-manager
xfce4-power-manager-data
xfce4-power-manager-plugins
xfce4-pulseaudio-plugin
xfce4-screenshooter
xfce4-sensors-plugin
xfce4-session
xfce4-settings
xfce4-smartbookmark-plugin
xfce4-systemload-plugin
xfce4-taskmanager
xfce4-terminal
xfce4-timer-plugin
xfce4-verve-plugin
xfce4-wavelan-plugin
xfce4-weather-plugin
xfce4-whiskermenu-plugin
xfce4-xkb-plugin
xfconf
xfdesktop4
xfdesktop4-data
</uninstall_package_names>

<postuninstall>
rm /etc/X11/Xsession.d/21xfce4-defaults-mx
</postuninstall>
</app>
