#!/bin/bash
mpc clear && mpc load $(mpc lsplaylists | dmenu -i -p "Select playlist: ") && mpc play
