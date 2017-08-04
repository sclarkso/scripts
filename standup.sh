#!/bin/bash
oldIFS="$IFS"
export SLACK_TOKEN="XXXXXXXXXXXXXX"
/usr/local/bin/gshuf -e A T C S-o standup.out
IFS=$'\n' arr=($(<standup.out))
arr=($(date +%Y-%m-%d) "${arr[@]}")
echo ${arr[*]} >> standup.log
cat standup.out | /Library/Frameworks/Python.framework/Versions/2.7/bin/slacker -c CHANNEL -n STANDUP_BOT
echo "https://bluejeans.com/XXXXXXXXX" | /Library/Frameworks/Python.framework/Versions/2.7/bin/slacker -c CHANNEL -n STANDUP_BOT
IFS=$oldIFS
