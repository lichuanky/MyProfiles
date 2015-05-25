#! /bin/sh

PORT="5555"
LAST_LETV_IP=$(tail -1 /home/lichuan/bin/cache_letv_ip)

if [ "${LAST_LETV_IP}" = "" ]
then
  echo "Please input conneted LETV IP :"
  read LETV_IP
else
  if [ "$1" = "-s" ]; then
    LETV_IP=$2
  else
    LETV_IP=${LAST_LETV_IP}
  fi
fi

result=`adb connect ${LETV_IP}`
echo $result
result=`adb -s $LETV_IP:${PORT} root`
echo $result
result=`adb connect $LETV_IP:${PORT}`
echo $result
#result=`adb -s $LETV_IP:${PORT} remount`

if [ "${LETV_IP}" = "" ]
then
  echo "Empty IP !"
else
  if [ "${LETV_IP}" = "${LAST_LETV_IP}" ]
  then 
    echo "No need to save IP."
  else 
    echo $LETV_IP >> /home/lichuan/bin/cache_letv_ip
  fi
fi

adb -s ${LETV_IP}:${PORT} shell

