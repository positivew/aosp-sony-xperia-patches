#!/bin/sh

# Patch for webview packages, required by OpenGApps AOSP 7.0

cd frameworks/base
git fetch https://github.com/AOSPA/android_frameworks_base.git
git cherry-pick d36582165d4694da101cc65755af0841d443c80e
