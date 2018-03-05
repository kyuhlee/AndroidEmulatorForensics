#!/bin/bash

adb kill-server
adb start-server
adb root
echo Uninstall Webview: com.android.webview
adb uninstall com.android.webview
sleep 1
echo Install Webview: $1
adb install $1
