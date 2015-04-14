#!/bin/bash
#Find the output file for further reduction.
find . -type f -name 'redrOutput.txt' |
#Output the top 10 highest frequencies associated with DDoS IP-Address.
xargs head -10 > topOutput.txt
echo 'Task completed.'
