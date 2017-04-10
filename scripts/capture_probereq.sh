#!/bin/bash
sudo tshark -i wlan0 -T fields -E separator=, -E quote=d  -e wlan.sa_resolved -e wlan.sa -e wlan_mgt.ssid -e frame.time_epoch -e radiotap.dbm_antsignal  -Y "wlan.fc.type_subtype == 4 and !(wlan_mgt.ssid == \"\")" >> /home/pi/probereqs.log
