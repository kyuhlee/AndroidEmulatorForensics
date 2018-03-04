AVDROOT=$HOME/.android/avd/
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
AVDPATH=$CURDIR/avd/forensics.avd/

rm -rf $AVDPATH
cp -rf $CURDIR/avd/forensics-init $AVDPATH

echo avd.ini.encoding=UTF-8 > $CURDIR/avd/forensics.ini
echo path=$AVDPATH >> $CURDIR/avd/forensics.ini
echo path.rel=avd/forensics.avd >> $CURDIR/avd/forensics.ini
cp $CURDIR/avd/forensics.ini $AVDROOT -f
