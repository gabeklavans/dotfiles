#!/usr/bin/bash

if pgrep -x "cava" > /dev/null
then
  kill $(pidof cava)
else
  /usr/bin/kitty +kitten panel --columns 6 --edge right -o font_size=9 /home/gabe/.local/bin/cava &
fi
