#!/bin/bash
sudo -u root bash <<EOF
	apt-get update && apt-get -y upgrade
	apt-get -y install raspberrypi-kernel-headers git libgmp3-dev gawk qpdf
	apt-get -y install tshark
EOF
