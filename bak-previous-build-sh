#!/bin/bash

# Stop on first error
set -e

echo "--------------------------------------"
echo "   Building Meshtastic for T-Deck     "
echo "--------------------------------------"

# 1. Clean previous builds
echo "Cleaning..."
#pio run --target clean -e t-deck
pio run --target clean -e t-deck-tft

# 2. Build the firmware
echo "Building..."
pio run -e t-deck-tft
#pio run -e t-deck-tft --target clean

echo "--------------------------------------"
echo "   Build Complete!                    "
echo "--------------------------------------"
