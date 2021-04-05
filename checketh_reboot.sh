ping -c4 192.168.0.1 > /dev/null

if [ $? != 0 ]
then
  sleep 5
  echo "No network connection restart Raspberry"
  sleep 1
  sudo /sbin/shutdown -r now
else
  echo "Network connection OK"
fi
