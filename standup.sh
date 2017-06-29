#!/bin/bash
export SLACK_TOKEN=""
/usr/local/bin/gshuf -e Alan Takayuki Craig Steven -o standup.out
echo "-----------" >> standup.log
date +%Y-%m-%d >> standup.log
cat standup.out >> standup.log
cat standup.out | /Library/Frameworks/Python.framework/Versions/2.7/bin/slacker -c rhmap-apac -n SKYNET
