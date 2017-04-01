#!/bin/sh

###
# CRON Job
#  5 * * * * /home/user/.scripts/update-ip.sh
###

LINODE_API_KEY=xxxx 
DOMAIN_ID=xxxx
RESOURCE_ID=xxxxx

# Ask your linode what your current home/remote WAN IP is
WAN_IP=`wget -O - -q https://secure.internode.on.net/webtools/showmyip?textonly=1`

# Get your old WAN IP
OLD_WAN_IP=`cat /home/user/CURRENT_WAN_IP.txt`

# See if the new IP is the same as the old IP.
if [ "$WAN_IP" = "$OLD_WAN_IP" ]; then
    echo "IP Unchanged"
    # Don't do anything if the IP didn't change
else
    # The IP changed. Update Linode's DNS to show the new IP
    echo $WAN_IP > /home/user/CURRENT_WAN_IP.txt
    wget -qO- https://api.linode.com/?api_key=$LINODE_API_KEY&api_action=domain.resource.u$
fi



