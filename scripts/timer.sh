#!/bin/bash

# Function to display time in figlet
display_time() {
    tput clear
    echo "$1" | figlet
}

# Function for simple clock
clock_mode() {
    while true; do
        display_time "$(date +'%H : %M : %S')"
        sleep 1
    done
}

# Function for count-up timer
countup_mode() {
    start_time=$(date +%s)
    while true; do
        current_time=$(date +%s)
        elapsed=$((current_time - start_time))
        hours=$((elapsed / 3600))
        minutes=$(( (elapsed % 3600) / 60 ))
        seconds=$((elapsed % 60))
        display_time "$(printf "%02d : %02d : %02d" $hours $minutes $seconds)"
        sleep 1
    done
}

# Function for countdown timer
countdown_mode() {
    local minutes=$1
    
    if ! [[ "$minutes" =~ ^[0-9]+$ ]]; then
        echo "Error: Please provide a valid number of minutes"
        exit 1
    fi
    
    seconds=$((minutes * 60))
    
    while [ $seconds -ge 0 ]; do
        hours=$((seconds / 3600))
        mins=$(( (seconds % 3600) / 60 ))
        secs=$((seconds % 60))
        display_time "$(printf "%02d : %02d : %02d" $hours $mins $secs)"
        sleep 1
        seconds=$((seconds - 1))
    done
    
    # Alert when countdown finishes
    display_time "TIME'S UP!"
    for i in {1..3}; do
        echo -e "\a"  # Bell sound
        sleep 1
    done
}

# Show usage if no arguments provided
show_usage() {
    echo "Usage:"
    echo "  $0 clock     - Show current time"
    echo "  $0 countup   - Start count-up timer"
    echo "  $0 countdown <minutes> - Start countdown timer"
    exit 1
}

# Main script
case "$1" in
    "clock")
        clock_mode
        ;;
    "countup")
        countup_mode
        ;;
    "countdown")
        if [ -z "$2" ]; then
            echo "Error: Please specify the number of minutes for countdown"
            show_usage
        fi
        countdown_mode "$2"
        ;;
    *)
        show_usage
        ;;
esac
