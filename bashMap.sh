#!/bin/bash
echo 'Please wait while the program Maps the bigData file...'
#Download the bigData file for Mapping.
wget 'https://www.dropbox.com/s/elivz1ghddfnkg1/bigData?dl=0' -O bigData
#Find the bigData file by its name.
find . -type f -name "bigData" |
#Output the searched bigData file for IP-Address regex, including port IDs.
xargs grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,5\}' > mapOutput.txt
echo 'Task completed.'
