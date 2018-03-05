@echo off
adb kill-server
adb start-server
adb root
echo Uninstall Webview: com.android.webview
adb uninstall com.android.webview
timeout 1 > NULL
echo Install Webview: %1
adb install %1