#!/bin/bash
mpv "$(find ~/vidz/ | dmenu -l 20 -i -p 'Select video: ')"
