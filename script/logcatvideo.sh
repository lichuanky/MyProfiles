#!/bin/bash
packageName=com.letv.videoplayer

pid=`adb shell ps | grep $packageName | awk '{print $2}'`
if [ "${pid}" = "" ]
then
  echo "$packageName was not found!"
else
  if [ "$1" = "-v" ]
  then
    if [ "$2" = "time" ]
    then
      adb logcat -v time | grep --color=auto $pid
    else
      adb logcat -v $s2 | grep --color=auto $pid
    fi
  else
    adb logcat | grep --color=auto $pid
  fi
fi
