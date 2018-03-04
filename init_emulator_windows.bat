SET AVDROOT=%userprofile%\.android\avd\
SET AVDPATH=%~dp0avd\forensics.avd\

@echo off
rmdir /Q /S %AVDPATH% 
xcopy /Y /F .\avd\forensics-init %AVDPATH%
@echo avd.ini.encoding=UTF-8 > avd\forensics.ini
@echo path=%AVDPATH:~0,-1% >> avd\forensics.ini
@echo path.rel=avd\forensics.avd >> avd\forensics.ini
@echo target=android-25 >> avd\forensics.ini

xcopy /Y /F avd\forensics.ini %userprofile%\.android\avd\
