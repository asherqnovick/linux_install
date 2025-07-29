#!/bin/bash


REAPER_VERSION=742
OS=linux
ARCH="aarch64"
curl -O -L https://www.reaper.fm/files/7.x/reaper${REAPER_VERSION}_${OS}_${ARCH}.tar.xz
tar -xf reaper${REAPER_VERSION}_${OS}_${ARCH}.tar.xz
./reaper_${OS}_${ARCH}/install-reaper.sh
rm reaper${REAPER_VERSION}_${OS}_${ARCH}.tar.xz
sudo rm -r -f reaper_${OS}_${ARCH}
