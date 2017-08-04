#!/bin/bash
oldIFS="$IFS"
export SLACK_TOKEN="xoxp-3275597612-78536592288-159846653248-41246486fe463cad40e556485bc7fbd9"
/usr/local/bin/gshuf -e Alan Takayuki Craig Steven -o standup.out
IFS=$'\n' arr=($(<standup.out))
arr=($(date +%Y-%m-%d) "${arr[@]}")
echo ${arr[*]} >> standup.log
cat standup.out | /Library/Frameworks/Python.framework/Versions/2.7/bin/slacker -c rhmap-apac -n STANDUP_BOT
echo "https://bluejeans.com/271411487/" | /Library/Frameworks/Python.framework/Versions/2.7/bin/slacker -c rhmap-apac -n STANDUP_BOT
IFS=$oldIFS
