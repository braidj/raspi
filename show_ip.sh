#!/bin/bash
ip=`ifconfig | grep -Eow "192.[0-9.]+" | head -1`
echo "$ip"
