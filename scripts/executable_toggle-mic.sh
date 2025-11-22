#!/usr/bin/env bash
# toggle-mic – toggle default input between Focusrite Mic1 and SteelSeries mono-chat

set -euo pipefail

FOC="alsa_input.usb-Focusrite_Scarlett_Solo_USB_Y76MWU09B82C80-00.HiFi__Mic1__source"
STE="alsa_input.usb-SteelSeries_SteelSeries_Arctis_7-00.mono-chat"

current=$(pactl get-default-source)

if [[ "$current" == "$FOC" ]]; then
    pactl set-default-source "$STE"
    notify-send "Mic toggled" "Switched to SteelSeries mono-chat" -t 1500
else
    pactl set-default-source "$FOC"
    notify-send "Mic toggled" "Switched to Focusrite Mic1" -t 1500
fi
