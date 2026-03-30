#!/bin/bash
# Script 4: Log File Analyzer
# Author: Mohd Suhail
# Choice: Firefox

# Command line argument for the log file
LOGFILE=$1
# Default keyword is 'error' if not provided
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read line by line and count matches
while read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------"
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
