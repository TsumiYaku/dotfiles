#!/bin/bash

curr_vol=$(pamixer --get-volume)
is_muted=$(pamixer --get-mute)

step=5

if [ $# -ne 1 ]; then
  echo "Wrong command usage"
  exit 1
fi

if [ $1 == "-m" ]; then
  pamixer -t > /dev/null
elif [ $1 == "-i" ]; then
  pamixer -u > /dev/null
  pamixer -i $step
elif [ $1 == "-d" ]; then
  pamixer -u > /dev/null
  pamixer -d $step
else
  echo "Wrong command usage"
  echo 2
fi


