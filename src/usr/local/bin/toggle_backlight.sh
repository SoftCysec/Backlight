#!/bin/bash

# Check the current state of the backlight
STATE=$(xset q | grep "LED mask" | awk '{ print $10 }')

# Toggle the backlight
if [ "$STATE" == "00000000" ]; then
  xset led 3
else
  xset -led 3
fi
