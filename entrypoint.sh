#!/bin/bash

for addr in "$@" 
do
adb connect $addr
done

node index.js