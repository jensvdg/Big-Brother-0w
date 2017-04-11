#!/bin/bash
cd /home/pi/Big-Brother-0w/wlan0-driver/ 
./install_driver.sh 
cd /home/pi/Big-Brother-0w/scripts
sleep 2 
nexutil -m2 
sleep 2 
sudo ./capture_probereq.sh
