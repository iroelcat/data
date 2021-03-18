#!/bin/bash
pihole disable
service pihole-FTL stop
rm /etc/pihole/pihole-FTL.log
rm /var/log/pihole-FTL.log
rm /var/log/pihole.log
service pihole-FTL start
pihole -f
pihole arpflush
pihole enable;
done
systemctl restart dnscrypt-proxy
