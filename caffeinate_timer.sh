#!/bin/bash

# Set the duration for which the lid-sleep should be deactivated (in seconds)
# 3600 sec = 1 hr
DURATION=3600

# Deactivate lid-sleep
sudo pmset -b sleep 0
sudo pmset -b disablesleep 1

echo "Lid-sleep has been deactivated for $DURATION seconds."

# Wait for the specified duration
sleep $DURATION

# Reactivate lid-sleep
sudo pmset -b sleep 1
sudo pmset -b disablesleep 0

echo "Lid-sleep has been reactivated."
