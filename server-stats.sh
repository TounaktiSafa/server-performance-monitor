#!/bin/bash


# Displays cpu Usage

echo "Cpu Usage"
mpstat | grep "all"
echo " "
# Total Memory usage

echo "Memory Usage"
free -h
echo " "
# Total disk Usage 
echo "Disk Usage"
df -h
echo " "

#Top 5 processes by CPU usage
echo "Top 5 processes by CPU usage"
ps --sort=-pcpu | head -n 6
echo " "
#Top 5 processes by memory usage

echo "Top 5 processes by memory usage"
ps --sort=-%mem | head -n 6
echo " "

# os version
echo "OS version"
lsb_release -a
echo " "
#Load average
echo "Load average"
uptime
echo " "
#Users Logged in

echo "Users Logged in"
who 
echo " "

#Failed Logins
echo "failed logins :"
sudo lastb | head
echo " " 

