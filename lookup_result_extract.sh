#!/bin/bash

# Check if a file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

file=$1

# Use awk to extract the username from lines with "SidTypeUser"
awk -F'[:\\\\(\\)]' '/SidTypeUser/ {print $3}' "$file"
