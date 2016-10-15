#!/bin/sh

# Patches Sony Xperia Z3 Tablet Compact to include modem blobs and OpenGApps.

cd device/sony/scorpion
git fetch https://github.com/positivew/device-sony-scorpion.git
git cherry-pick 080f06fca8c3ba04af1c399e8f275764fe1ed182
