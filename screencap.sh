#!/bin/bash
if [ $# != 1 ]; then
        echo "Please enter the filename of png. For example: ./screencap 1 "
        exit -1
fi

adb shell screencap -p /sdcard/"$1".png
adb pull /sdcard/"$1".png
adb shell rm /sdcard/"$1".png
echo "Save $1.png"
exit 0
