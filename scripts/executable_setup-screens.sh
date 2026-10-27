#!/usr/bin/bash

# set main monitor to DP1 input
ddcutil setvcp 60 0x0f --bus 8

sleep 2s

kscreen-doctor output.DP-1.enable output.DP-1.priority.2 output.DP-1.position.2048,252 output.DP-2.enable output.DP-2.priority.1 output.DP-2.position.0,0
# need to really tell it which one is the primary screen
kscreen-doctor output.DP-2.priority.1

# switch to Main desktop
qdbus org.kde.KWin /KWin org.kde.KWin.setCurrentDesktop 1

# turn off DnD
qdbus org.kde.kglobalaccel /component/plasmashell invokeShortcut "toggle do not disturb"
