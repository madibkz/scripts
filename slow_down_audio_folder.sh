#!/bin/bash

slowdownrate="70"
suffix="-slowed.mp3"

if [ -n "${1+set}" ]
then
  $slowdownrate=$1
fi

detox ./ #remove spaces / bad characters in file names

for f in $(ls);
do
  ffmpeg -i "$f" "$f$suffix" ; #use ffmpeg to convert the file to mp3
  ecasound -i "$f$suffix" -ei:$slowdownrate -o "$f$suffix" ; # replace with slowed file
done ;
