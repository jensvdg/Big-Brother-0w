#!/bin/bash
sudo rmmod brcmfmac
sudo modprobe brcmutil
sudo insmod brcmfmac/brcmfmac.ko
