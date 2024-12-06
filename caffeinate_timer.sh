#!/bin/bash

# Set the duration for which the lid-sleep should be deactivated (in seconds)
# 3600 sec = 60 mins
DURATION=3600

# Function to restore sleep settings
restore_settings() {
    sudo pmset -b sleep 1
    sudo pmset -b disablesleep 0
    echo "Lid-sleep has been reactivated."
    exit
}

# Trap to catch interrupt signals (like Ctrl+C)
trap restore_settings SIGINT SIGTERM

# Deactivate lid-sleep
sudo pmset -b sleep 0
sudo pmset -b disablesleep 1

echo "Lid-sleep has been deactivated for $DURATION seconds. Press Ctrl+C to cancel early."

# Wait for the specified duration or until interrupted
for ((i=0; i<DURATION; i++)); do
    sleep 1
done

# If duration ends without interruption
restore_settings
