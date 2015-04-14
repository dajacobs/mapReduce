#!/bin/bash
#Find the output file for further reduction.
find . -type f -name 'redOutput.txt' |
#Sort the highest frequency of occurrence.
xargs sort -nr > redrOutput.txt
echo 'Task completed.'
