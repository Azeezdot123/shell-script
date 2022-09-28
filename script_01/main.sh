#!/usr/bin/bash

echo "Sarting the Script"

# getting the system memory info and add it into a file
date >> daily-meminfo.txt
head -n 5 /proc/meminfo >> daily-meminfo.txt
printf "===========================\n" >> daily-meminfo.txt