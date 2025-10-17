#!/bin/bash


echo "###################################"
echo "      System Resource Usage " 
echo "###################################"

# CPU usage
echo -e "\n##### CPU Usage #####"
mpstat 1 1 | awk '/Average/{print "CPU Usage: "100 - $12}'

# Memory usage
echo -e "\n##### Memory Usage #####"
free -m | awk '/Mem/{print "Memory Used: " $3 "MB /" $2"MB" "  ("$3/$2*100"%)"}'

# Disk usage
echo -e "\n##### Disk Usage #####"
 df -h --total | awk '/total/{print "Used: " $3"/"$2 "  ("$5")"}'

# Top 5 processes by CPU
echo -e "\n##### Top 5 Processes by CPU #####"
ps aux --sort=-%cpu | awk '{print $1 "   " $2 "    " $3}' | column -t -s '  ' | head -n 6

# Top 5 processes by Memory
echo -e "\n##### Top 5 Processes by Memory #####"
ps aux --sort=-%mem | awk '{print $1 "   " $2 "    " $4}' | column -t -s '  ' | head -n 6