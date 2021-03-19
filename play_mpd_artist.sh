#!/bin/bash
mpc clear && mpc searchadd artist "$(mpc list artist | dmenu -i -p "Select artist: ")" && mpc play
