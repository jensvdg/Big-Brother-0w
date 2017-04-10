#!/bin/bash
sudo -u root bash <<EOF
	apt-get update && apt-get upgrade
	apt-get install raspberrypi-kernel-headers git libgmp3-dev gawk qpdf
	apt-get install tshark
EOF
