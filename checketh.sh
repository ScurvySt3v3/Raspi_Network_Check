ping -c4 192.168.0.1 > /dev/null

if [ $? != 0 ]
then
  echo "No network connection, restarting eth0"
  /sbin/ifconfig eth0 down
  sleep 5
  /sbin/ifconfig eth0 up
  sleep 5
  /usr/local/bin/checketh_reboot.sh
else
  echo "Network connection OK"
fi
