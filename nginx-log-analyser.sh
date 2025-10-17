#!/bin/bash

logfile=$1

if [[ ! -f $logfile ]]; then
    echo "Error: File not found! ❌"
    exit 1
fi

echo "===== Top 5 IP addresses with the most requests ====="
awk '{print $1}' "$logfile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}' | column -t 

echo
echo "===== Top 5 most requested paths ====="
awk '{print $7}' "$logfile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}' | column -t 

echo
echo "===== Top 5 response status codes ====="
grep -oE ' [1-5][0-9]{2} ' "$logfile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}' | column -t 

echo
echo "===== Top 5 user agents ====="
awk -F'"' '{print $6}' "$logfile" | sort | uniq -c | sort -nr  | awk '{$1=""; sub(/^ /,""); print}' | head -5

