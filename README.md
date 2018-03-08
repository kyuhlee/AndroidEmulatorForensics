----
## Install Emulator
1. Install Android SDK or Android Studio.  
[https://developer.android.com/studio/install.html](https://developer.android.com/studio/install.html)  
[https://developer.android.com/studio/index.html](https://developer.android.com/studio/index.html)
2. ```./download_emulator.sh``` Download system images and utilities for the emulator.
3. ```./init_emulator.sh``` Initialize (or reset) the emulator. (If you override ANDROID_AVD_HOME, you need to modify AVDROOT in ```init_emulator.sh```)

----
## Run Emulator
* ```./run_emulator.sh``` Start the emulator.

> If you get ```SDL init failure, reason is: No available video device``` error, you need to install sdl library. (e.g., ```sudo apt-get install libsdl1.2debian:i386``` in Ubuntu).
> If you get ```Failed to open libEGL_translator: [libGL.so.1: cannot open shared object file: No such file or directory]``` error, you need to install gl-mesa library. (e.g., ```sudo apt-get install libgl1-mesa-glx:i386``` in Ubuntu)

----
## Replace Webview and Chromium
* ```./replace_webview.sh [new_webview.apk]```
* ```./replace_chromium.sh [new_chromium.apk]```
