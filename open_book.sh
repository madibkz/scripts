#!/bin/bash
zathura "$(find ~/boox/ | dmenu -l 20 -i -p 'Select book: ')"
