#!/bin/bash

url=$1
main_url=$2
artist_folder_name=$3

#make directories for artist
mkdir -p ~/audio/mu/$artist_folder_name
cd ~/audio/mu/$artist_folder_name

#saves all the urls to bandcamp albums to bc_urls.txt
curl $1 | grep "<a href=\"/album/*" | awk -v url="${main_url::-1}" -F\" '{print url$2}' > bc_urls.txt

#download albums and put it in right folders with best audio quality
youtube-dl -cix --batch-file=bc_urls.txt -f bestaudio -o '%(album)s/%(track_number)s-%(track)s.%(ext)s'

#delete the bc_urls.txt file
rm bc_urls.txt
