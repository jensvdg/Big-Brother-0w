#!/bin/bash
sudo ifdown wlan0
sudo rmmod brcmfmac
sudo modprobe brcmutil
sudo insmod brcmfmac/brcmfmac.ko
