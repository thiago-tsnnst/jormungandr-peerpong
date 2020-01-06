#!/bin/bash
#
# Created by: Dogpatch Media
# Decription:
# 
# Bash script to ping trusted peers to see whos alive.
# Uses HPING3 instead of standard ping. 
# 
# Use: bash ./peerpong.sh
#



# file containing the list of trusted peers.
# file format: location <space> ip_addresss
# location name must be 5 characters.

PEERS=/path/to/peers.txt

# how many times do you want to ping the target peer
PINGS = 10


# lets do this..

echo "////////////////// JORMUNGANDR PEERPONG /////////////////////"
echo "///////////// test latency to trusted peers /////////////////"
echo "LOCATIONS:"
echo "GRMN = Germany"
echo "JAPN = Japan"
echo "USA = United States"
echo ""

# loop through the trusted peers file pinging each one 
while IFS= read -r line;
do

  LOCATION=$(echo "$line" | cut -c -6)
  HOST=$(echo "$line" | cut -c 6-)
  echo $LOCATION 
  sudo hping3 $HOST -c $PINGS -S -V -n -p 3000 |  grep rtt 
  echo "/////////////////////////////////////////////////////////"

 
done < ${PEERS}
