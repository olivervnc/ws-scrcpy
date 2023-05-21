#!/bin/bash

for addr in "$@" 
do
adb connect $addr
done

npm start