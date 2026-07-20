#!/usr/bin/bash

# set main monitor to HDMI input
ddcutil setvcp 60 0x12 --bus 8

sleep 5s

kscreen-doctor output.DP-2.disable
