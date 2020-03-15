#!/bin/sh

# cron script for checking wlan connectivity
IP_FOR_TEST="192.168.0.03" # The Seagate NAS, which should always be up
PING_COUNT=1

PING="/bin/ping"
INTERFACE="eth0"

# ping test
$PING -c $PING_COUNT $IP_FOR_TEST > /dev/null 2> /dev/null
if [ $? -ge 1 ]
then
    echo "$PING -c $PING_COUNT $IP_FOR_TEST"
else
    echo "check_lan: $INTERFACE is up"
fi
