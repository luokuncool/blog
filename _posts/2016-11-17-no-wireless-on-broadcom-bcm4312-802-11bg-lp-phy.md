---
layout: post
title:  "联想g450 ubuntu无法上wifi"
date:   2016-05-25 21:50:34 +0800
categories: linux
---
Broadcom BCM4312 802.11b/g LP-PHY  
You only need the missing firmware:
Code:  

    sudo apt-get install firmware-b43-lpphy-installer

--------

Remove the STA driver and its config, if applicable:
Code:  

    sudo apt-get remove --purge bcmwl-kernel-source
    sudo rm /etc/modprobe.d/blacklist-bcm43.conf
    sudo rm /etc/modprobe.d/broadcom-sta-common.conf
    sudo rm /etc/modprobe.d/broadcom-sta-dkms.conf
Reboot.

http://ubuntuforums.org/showthread.php?t=2170117