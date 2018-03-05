@echo off
adb kill-server
adb start-server
adb root
echo Uninstall Chromium: org.chromium.chrome
adb uninstall org.chromium.chrome
timeout 1 > NULL
echo Install Chromium: %1
adb install %1