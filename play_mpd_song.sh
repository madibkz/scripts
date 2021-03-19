#!/bin/bash
mpc clear && mpc searchadd title "$(mpc list title | dmenu -i -p "Select title: ")" && mpc play
