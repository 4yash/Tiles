#!/bin/bash

#install adb
if adb --version &</dev/null; then
		sudo apt-get install adb
fi

#obtain currently set tiles
c1=$(adb shell settings get secure sysui_qs_tiles)

#add required tile names
c2="$c1,MobileData,Hotspot"

#put new list of tiles back to the device via adb shell
c3="adb shell settings put secure sysui_qs_tiles \"$c2\""

$c3