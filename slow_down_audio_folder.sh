#!/bin/bash

slowdownrate="70"
filetype=".mp3"

if [ -n "${1+set}" ]
then
  $slowdownrate=$1
fi

detox ./ #remove spaces / bad characters in file names

for f in $(ls);
do
  ffmpeg -i "$f" "$f$filetype" ; #use ffmpeg to convert the file to mp3
  ecasound -i "$f$filetype" -ei:$slowdownrate -o "$f-slowed$filetype" ; # replace with slowed file
done ;
