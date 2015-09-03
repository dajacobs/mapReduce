#!/bin/bash
function map {
	echo 'Please wait while the program Maps the bigData file...'
	#Download the bigData file for Mapping.
	wget 'https://www.dropbox.com/s/elivz1ghddfnkg1/bigData?dl=0' -O bigData
	#Find the bigData file by its name.
	find . -type f -name "bigData" |
	#Output the searched bigData file for IP-Address regex, including port IDs.
	xargs grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,5\}' > mapOutput.txt
	echo 'Task completed.'
}
function reduce {
	echo 'Please wait while Reduce is performed on the Mapped file...'
	#Search the bigData file for local IP Addresses and remove them.
	find . -type f -name 'mapOutput.txt' |
	xargs grep -v '10.' |
	#Sort the file in accordance with the first octet address.
	sort -n -t . -k1,1 |
	#Add a frequency of accurance and in ascending order.
	uniq -c > redOutput.txt
	echo 'Task completed.'
}
function reducer {
	#Find the output file for further reduction.
	find . -type f -name 'redOutput.txt' |
	#Sort the highest frequency of occurrence.
	xargs sort -nr > redrOutput.txt
	echo 'Task completed.'
}
function top {
	#Find the output file for further reduction.
	find . -type f -name 'redrOutput.txt' |
	#Output the top 10 highest frequencies associated with DDoS IP-Address.
	xargs head -10 > topOutput.txt
	echo 'Task completed.'
}
$@