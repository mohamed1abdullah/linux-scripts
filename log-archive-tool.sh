#!/bin/bash

dir_log=$1

if [[ -f $dir_log ]]; then
    echo "Exist ✅"

    tar -cvf syslog_$(date +"%Y%m%d_%H%M%S").tar $dir_log
    echo "Done ✅"
else
    echo "Not Exist ❌"
    exit 1
fi
