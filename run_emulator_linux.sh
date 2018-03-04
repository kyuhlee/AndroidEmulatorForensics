CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export LD_LIBRARY_PATH=$CURDIR/emulator/linux-x86_64/lib:$LD_LIBRARY_PATH:

$CURDIR/emulator/linux-x86_64/emulator-x86  -avd forensics -system ./images/system.img -kernel ./images/kernel-qemu -gpu mesa -ramdisk ./images/ramdisk.img
