#!/bin/bash 

# Function to check update for systems

check_update(){
    echo "checking for system updates"
    sudo apt update > /dev/null 2>&1

    if [[ $? -eq 0 ]]; then
        echo "System upates are available."
    else
        echo "Failed to check for updates"
    fi
}

# Function to check disk space usage 
check_disk_space() { 
    echo "Checking disk space usage..." 
    disk_usage=$(df -h / | grep '/' | awk '{print $5}') 
    echo "Disk usage for root partition: $disk_usage" 
} 

# Function to count active users 
check_active_users() { 
    echo "Checking active users..." 
    user_count=$(who | wc -l) 
    echo "Number of users currently logged in: $user_count" 
}