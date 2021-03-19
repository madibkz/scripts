#!/bin/bash
mpc clear && mpc searchadd album "$(mpc list album | dmenu -i -p "Select album: ")" && mpc play
