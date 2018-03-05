#!/bin/bash

adb kill-server
adb start-server
adb root
echo Uninstall Chromium: org.chromium.chrome
adb uninstall org.chromium.chrome
sleep 1
echo Install Chromium: $1
adb install $1
