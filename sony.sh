#!/bin/sh

# Patches for Xperia hardware, provided by Sony.
# Source: http://developer.sonymobile.com/open-devices/aosp-build-instructions/how-to-build-aosp-nougat-for-unlocked-xperia-devices/
# Date: 10/15/2016
#
# Must be run in the root directory of the AOSP build.

cd external/toybox
git fetch https://android.googlesource.com/platform/external/toybox refs/changes/74/265074/1 && git cherry-pick FETCH_HEAD
git cherry-pick d3e8dd1bf56afc2277960472a46907d419e4b3da
git cherry-pick 1c028ca33dc059a9d8f18daafcd77b5950268f41
git cherry-pick cb49c305e3c78179b19d6f174ae73309544292b8
cd ../../hardware/qcom/audio
git revert --no-edit 1c9849ca9873ec815caf52935aa772b22658219e
git fetch https://android.googlesource.com/platform/hardware/qcom/audio refs/changes/79/267279/1 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/audio refs/changes/80/267280/1 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/audio refs/changes/35/274235/6 && git cherry-pick FETCH_HEAD
cd ../bt
git revert --no-edit c7dc913784965e4ce705c2045f0a8b43fcd1db1c
cd ../display
git revert --no-edit b7d1a389b00370fc9d2a7db1268ce26271ead7e2
git revert --no-edit f026d04dde743a0524235ae57e2ce8ac5364d44b
git revert --no-edit 3261eb2236252f9f2510c008fad451411a780b3b
git fetch https://android.googlesource.com/platform/hardware/qcom/display refs/changes/72/265072/1 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/display refs/changes/73/265073/1 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/display refs/changes/54/274454/1 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/display refs/changes/55/274455/1 && git cherry-pick FETCH_HEAD
cd ../gps
git revert --no-edit 53bf15aab71461f81e27e6f5176afcd1a29af7d4
git revert --no-edit 486ab751599b7f8b5a2f2711d22867ad54fdc79b
cd ../media
git revert --no-edit 9e8b76d32ece15e79ebf4b02ede869d89807eec6
cd ../keymaster
git revert --no-edit 583ecf5ed2a4be0d05229b8c6726680c3836be8b
git fetch https://android.googlesource.com/platform/hardware/qcom/keymaster refs/changes/70/212570/5 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/keymaster refs/changes/80/212580/2 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/keymaster refs/changes/61/213261/1 && git cherry-pick FETCH_HEAD
git fetch https://android.googlesource.com/platform/hardware/qcom/keymaster refs/changes/21/245721/1 && git cherry-pick FETCH_HEAD
cd ../../../system/core
git fetch https://android.googlesource.com/platform/system/core refs/changes/52/269652/1 && git cherry-pick FETCH_HEAD
cd ../../packages/apps/Nfc
git revert --no-edit 988c3fff5470a1de3a880bd07fa438cc47e283c8
cd ../Music
git cherry-pick 6036ce6127022880a3d9c99bd15db4c968f3e6a3

