#!/bin/bash

if [ -n "${1+set}" ]
then
  mpv $(echo "https://www.youtube.com/watch?v="$(youtube-dl --default-search "ytsearch" --get-id "$1"))
fi
