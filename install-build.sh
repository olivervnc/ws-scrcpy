#!/bin/bash

set -e

apt-get update && apt-get install git python3 make g++ -y

cd /
git clone https://github.com/NetrisTV/ws-scrcpy.git

cd ws-scrcpy
npm install -g node-gyp esbuild
npm install
npm run dist

esbuild dist/index.js --platform=node --target=node16 --bundle --loader:.node=file --outdir=build/ --minify
mv dist/public dist/vendor dist/LICENCE build/