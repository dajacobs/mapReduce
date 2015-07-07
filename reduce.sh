#!/bin/bash
echo 'Please wait while Reduce is performed on the Mapped file...'
#Search the bigData file for local IP Addresses and remove them.
find . -type f -name 'mapOutput.txt' |
xargs grep -v '10.' |
#Sort the file in accordance with the first octet address.
sort -n -t . -k1,1 |
#Add a frequency of accurance and in ascending order.
uniq -c > redOutput.txt
echo 'Task completed.'
