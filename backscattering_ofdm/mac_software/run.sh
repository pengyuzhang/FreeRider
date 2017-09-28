#bin/bash

sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -z
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --channel=13
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I en0

sudo tcpdump -G 5 -W 1 -I -P -i en0 -w './dump.pcap'

tshark -r dump.pcap -T fields -e data > dump.txt

python get_data.py

sudo mv 'dump.pcap' 'data/'$1'.pcap'
sudo mv 'dump.txt' 'data/'$1'.txt'
