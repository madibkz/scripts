#!/bin/bash

echo Enter artist name:
read artist
echo Enter album folder name:
read album
echo Enter the playlist id:
read id

mkdir -p ~/audio/mu/$artist/$album
cd ~/audio/mu/$artist/$album
youtube-dl -x -o '%(playlist_index)s-%(title)s.%(ext)s' $id
