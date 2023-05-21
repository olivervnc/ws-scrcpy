#!/bin/bash

set -e

apt-get update && apt-get install git python3 make g++ -y

cd /
git clone https://github.com/NetrisTV/ws-scrcpy.git
cd ws-scrcpy
npm install -g node-gyp
npm install
npm run dist