#!/bin/bash
sudo tshark -i wlan0 -T fields -E separator=, -e wlan.sa_resolved -e wlan.sa -e wlan_mgt.ssid -e frame.time_epoch -e radiotap.dbm_antsignal  -Y "wlan.fc.type_subtype == 4 and !(wlan_mgt.ssid == \"\")" -f "(ether host not 00:1e:8f:a3:83:79) and (ether host not ac:cf:23:12:db:75)" >> /home/pi/probereqs.log
