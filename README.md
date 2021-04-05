# Raspi_Network_Check
The Raspberry Pi tends to drop network connection which is a real pain when you're trying to do anything that has the RPi running constantly from a remote location, like my HomeAssitant Setup with AdguardHome.

However, it's possible to detect Ethernet or Wifi connection loss and perform upon it. 
The first Script do a Check (ping) and push the eth0 down and then up, if this dont work, the second script do a full system reboot.

Copy the scripts "checketh.sh" and "checketh_reboot.sh" to "/usr/local/bin/"
Edit your Router IP if necessary.

Make sure the script has the correct permissions to run.

sudo chmod 775 /usr/local/bin/checketh.sh
sudo chmod 775 /usr/local/bin/checketh_reboot.sh


Run the Script every 5 min with crontab.

SSH into the Raspberry Pi and open up the crontab editor by typing crontab -e.
Add the following line:
*/5 * * * * /usr/bin/sudo -H /usr/local/bin/checketh.sh >> /dev/null 2>&1





If you want to test it, you can use the IP address of your cell phone instead of your router IP address. If you now deactivate the wifi on your cell phone, the Raspberry should restart after 5 minutes. 
