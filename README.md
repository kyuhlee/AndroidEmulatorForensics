1. Install Android SDK or Android studio.
   (https://developer.android.com/studio/install.html or https://developer.android.com/studio/index.html)
2. Run download_emulator.sh to download system images and utilities for the emulator.
3. Run init_emulator.sh to initialize and setup 'forensics' avd.
   * If you override ADNROID_AVD_HOME, you need to modify AVDROOT in init_emulator.sh file.
4. Run run_emulator_xxx.sh to start the emulator.
   * If you get "SDL init failure, reason is: No available video device" error,
			  you need to install sdl library. (e.g., sudo apt-get install libsdl1.2debian:i386)
