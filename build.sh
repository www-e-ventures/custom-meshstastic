#!/bin/bash

# Stop on first error
set -e

echo "--------------------------------------"
echo "   Building Meshtastic for T-Deck     "
echo "--------------------------------------"

# 1. Clean previous builds (optional, but good for "clean" releases)
# echo "Cleaning..."
# pio run --target clean -e t-deck

# 2. Build the firmware
echo "Building..."
pio run -e t-deck

# 3. (Optional) Upload if device is connected
# Uncomment the next lines to auto-flash
# echo "Uploading..."
# pio run -e t-deck --target upload

# 4. (Optional) Open Serial Monitor
# pio device monitor

echo "--------------------------------------"
echo "   Build Complete!                    "
echo "--------------------------------------"