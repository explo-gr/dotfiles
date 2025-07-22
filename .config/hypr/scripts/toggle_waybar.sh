#!/bin/bash

# Check if waybar is running
if pgrep -x "waybar" > /dev/null; then
    echo "Waybar is running. Killing it..."
    pkill -x "waybar"
else
    echo "Waybar is not running. Starting it..."
    uwsm app -- waybar &
fi
