#!/usr/bin/bash

kscreen-doctor output.DP-1.enable output.DP-1.priority.2 output.DP-1.position.2048,252 output.DP-2.enable output.DP-2.priority.1 output.DP-2.position.0,0
# need to really tell it which one is the primary screen
kscreen-doctor output.DP-2.priority.1
