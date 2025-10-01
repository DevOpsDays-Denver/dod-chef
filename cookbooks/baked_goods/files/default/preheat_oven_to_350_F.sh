#!/bin/bash

TARGET_TEMP=350

echo "Setting oven to ${TARGET_TEMP}°F..."

curl -X POST "hottest-oven-in-town.local:8123/temperature" \
     -H "Content-Type: application/json" \
     -d "{\"temperature\": ${TARGET_TEMP}, \"unit\": \"fahrenheit\"}"

if [ $? -eq 0 ]; then
    echo "✓ Oven temperature set to ${TARGET_TEMP}°F"
else
    echo "✗ Failed to set oven temperature"
    exit 1
fi
