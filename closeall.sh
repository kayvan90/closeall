#!/bin/bash

WINs=$(wmctrl -l | grep -vwE "Desktop$|unity.*$|Hud")

#0x03200002  0 k1-labtop XdndCollectionWindowImp

echo " shoutdown process starting..."
echo "====================================================="

IFS=$'\n'
for window in $WINs
do	
	#echo ${window:25}
	echo " * closing  ${window:25}"
	#echo ${window:0:10}
	#echo $win_id
	wmctrl -ic ${window:0:10}
	sleep 1
done

echo "all programs are closed! now powering off..."
echo "====================================================="
echo "goodbye ;-)"

poweroff
