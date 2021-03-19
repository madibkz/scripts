#!/bin/bash
echo $(date +%T) | dmenu -p "Time is: " &
sleep 1 &&
xdotool key Escape
