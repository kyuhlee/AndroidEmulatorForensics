CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f $CURDIR/forensics_emulator_images.tar.gz ]; then
		wget http://cobweb.cs.uga.edu/~kyuhlee/forensics_emulator_images.tar.gz $CURDIR/
fi


if [ ! -f $CURDIR/forensics_emulator_utils.tar.gz ]; then
		wget http://cobweb.cs.uga.edu/~kyuhlee/forensics_emulator_utils.tar.gz $CURDIR/
fi

tar xzvf $CURDIR/forensics_emulator_images.tar.gz
tar xzvf $CURDIR/forensics_emulator_utils.tar.gz

