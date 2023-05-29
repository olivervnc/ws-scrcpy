#!/bin/bash

for addr in "$@" 
do
  if [[ "`adb connect $addr`" = *"connected"* ]];
  then 
    # echo "connected"
  else
    echo "failed to connect to $addr"
    exit 1
  fi
done

node index.js