#!/bin/bash

#Check if the "detailed" parameter is provided
if [[ $1 == "detailed" ]]; then
    echo "Detailed System Information:" 
    echo "--------------------------------" 
    echo "System Name: $(uname -n)"
    echo "Kernel Version: $(uname -r)" 
    echo "Memory Usage: $(free -h)" 
    echo "Disk Usage: $(df -h /)"
    echo "Processes Running: $(ps aux | wc -l)"
else

    # Display basic information 
    echo "Current Date and Time: $(date)" 
    echo "System Uptime: $(uptime -p)" 
    echo "Number of Users Logged In: $(who | wc -l)"
fi