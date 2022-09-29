#!/usr/bin/bash

# get the value from environment variable if set
email=$EMAIL
dateinfo=$(date +%A)
memoryinfo=($dateinfo-meminfo.log)
time=$(date +%H)

# getting the system memory info and add it into a file
function get_memoinfo() {
    echo "Getting the memory info log for $(date)" >> $memoryinfo
    printf "===============================================================\n" >> $memoryinfo
    head -n 5 /proc/meminfo >> $memoryinfo
    printf " \n" >> $memoryinfo
}

# this send the mail when called 
function mailSender() (
    sendmail $email < $memoryinfo
)

# This is a function caller that get all operation to get done
function funcCaller() {
    get_memoinfo

    if [ ${time} -eq 00 ];
        then mailSender
        # remove the log file if the mailsendSender return 0
            if [ $? -eq 0 ];
                then rm -rf $memoryinfo
            fi
    else
        :
    fi
}

funcCaller