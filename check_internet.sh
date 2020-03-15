#------------------------------------------
# Created: braidj@gmail.com 20200315
# Purpose: Check the internet connection
# 2 Optional args: nos_pings, www address
#------------------------------------------

nos_times="$1"
addr="$2"

default_nos=5
default_addr="www.bbc.co.uk"

if [ -z "$1"]
  then
    nos_times=$default_nos
fi

if [ -z "$2"]
  then
    addr=$default_addr
fi

echo "Testing with ${nos_times} pings to: $addr"
sudo ping -c $nos_times $addr
exit 0
