#!/bin/bash

CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f $CURDIR/forensics_emulator_images.zip ]; then
		wget http://cobweb.cs.uga.edu/~kyuhlee/forensics_emulator_images.zip $CURDIR/
fi


if [ ! -f $CURDIR/forensics_emulator_utils.zip ]; then
		wget http://cobweb.cs.uga.edu/~kyuhlee/forensics_emulator_utils.zip $CURDIR/
fi

unzip $CURDIR/forensics_emulator_images.zip
unzip $CURDIR/forensics_emulator_utils.zip

