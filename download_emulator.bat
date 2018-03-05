@echo off
SET CURDIR=%~dp0

if not exist %CURDIR%forensics_emulator_images.zip (
	echo Downloading images...
	powershell.exe -Command wget http://cobweb.cs.uga.edu/~kyuhlee/forensics_emulator_images.zip -OutFile %CURDIR%forensics_emulator_images.zip
)

if not exist %CURDIR%forensics_emulator_utils.zip (
	echo Downloading utils...
	powershell.exe -Command wget http://cobweb.cs.uga.edu/~kyuhlee/forensics_emulator_utils.zip -OutFile %CURDIR%forensics_emulator_utils.zip
)

echo Unzip downloaded files..
powershell.exe -nologo -noprofile -command "& { $shell = New-Object -COM Shell.Application; $target = $shell.NameSpace('%CURDIR%'); $zip = $shell.NameSpace('%CURDIR%forensics_emulator_utils.zip'); $target.CopyHere($zip.Items(), 16); }"
powershell.exe -nologo -noprofile -command "& { $shell = New-Object -COM Shell.Application; $target = $shell.NameSpace('%CURDIR%'); $zip = $shell.NameSpace('%CURDIR%forensics_emulator_images.zip'); $target.CopyHere($zip.Items(), 16); }"
