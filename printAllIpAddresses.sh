#!/bin/bash

max=255;

echo ""
echo "  finding    "
echo ""

for (( a=0; a<=max; a++ ))
do

  for (( b=0; b<=max; b++ ))
  do

    for (( c=0; c<=max; c++ ))
    do

      for (( d=0; d<=max; d++ ))
      do

        echo "$a.$b.$c.$d"

      done

    done

  done

done

