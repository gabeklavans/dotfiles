#!/usr/bin/bash

kscreen-doctor output.DP-2.disable

sleep 2s

# set main monitor to HDMI input
ddcutil setvcp 60 0x12 --bus 8

# switch to Work desktop
qdbus org.kde.KWin /KWin org.kde.KWin.setCurrentDesktop 2

# turn on DnD
qdbus org.kde.kglobalaccel /component/plasmashell invokeShortcut "toggle do not disturb"
