# Author: braidj
# Date: 20161001
# Purpose: to check the internet connection
nos_times="$1"
sudo ping -c $nos_times www.bbc.co.uk
return 0
