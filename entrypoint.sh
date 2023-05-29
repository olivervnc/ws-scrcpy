#!/bin/bash

set -e

for addr in "$@" 
do
  if [[ "`adb connect $addr`" = *"connected"* ]];
  then 
    echo "connected to $addr"
  else
    echo "failed to connect to $addr"
    exit 1
  fi
done

node index.js