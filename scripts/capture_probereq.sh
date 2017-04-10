#!/bin/bash
sudo tshark -Y "wlan.fc.type_subtype eq 4" -i wlan0 -T fields -e wlan.sa_resolved -e wlan.sa -e wlan_mgt.ssid -e frame.time_epoch -e radiotap.dbm_antsignal >> /home/pi/probereqs.log
