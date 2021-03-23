#!/bin/bash

slowdownrate="70"

if [ -n "${1+set}" ]
then
  $slowdownrate=$1
fi

for f in $(ls);
do
  ecasound -i "$f" -ei:$slowdownrate -o "$f" ;
done ;
