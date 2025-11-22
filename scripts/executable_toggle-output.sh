#!/usr/bin/env bash
# toggle-sink – toggle default sink between Focusrite Line1 and SteelSeries stereo-game

set -euo pipefail

FOC="alsa_output.usb-Focusrite_Scarlett_Solo_USB_Y76MWU09B82C80-00.HiFi__Line1__sink"
STE="alsa_output.usb-SteelSeries_SteelSeries_Arctis_7-00.stereo-game"

current=$(pactl get-default-sink)

if [[ "$current" == "$FOC" ]]; then
    pactl set-default-sink "$STE"
    notify-send "Sink toggled" "Switched to SteelSeries stereo-game" -t 1500
else
    pactl set-default-sink "$FOC"
    notify-send "Sink toggled" "Switched to Focusrite Line1" -t 1500
fi
