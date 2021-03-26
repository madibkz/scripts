#!/bin/bash

export_folder="${PWD##*/}-vidz"
detox ./ #remove spaces / bad characters in file names
current_files=$(ls)

if ! [ -n "${1+set}" ]; then
  echo "you should input a path to an image file - exiting..."
  exit
fi

mkdir -p $export_folder

for f in $current_files;
do
  #use ffmpeg to convert the file to mp4 with image
  ffmpeg -i $f -i $1 "$export_folder/${f%.*}.mp4" ;
done ;
