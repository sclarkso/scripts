#!/bin/bash
oldIFS="$IFS"
export SLACK_TOKEN="
/usr/local/bin/gshuf -e Alan Takayuki Craig Steven -o standup.out
IFS=$'\n' arr=($(<standup.out))
arr=($(date +%Y-%m-%d) "${arr[@]}")
echo ${arr[*]} >> standup.log
cat standup.out | /Library/Frameworks/Python.framework/Versions/2.7/bin/slacker -c rhmap-apac -n SKYNET
IFS=$oldIFS
