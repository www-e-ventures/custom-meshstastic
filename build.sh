#!/bin/bash

# Stop on first error
set -e

echo "--------------------------------------"
echo "   Building Meshtastic for T-Deck     "
echo "--------------------------------------"

# 1. Clean previous builds (optional, but good for "clean" releases)
# echo "Cleaning..."
pio run --target clean -e t-deck
pio run --target clean -e t-deck-tft

# 2. Build the firmware
echo "Building..."
pio run -e t-deck t-deck-tft

echo "--------------------------------------"
echo "   Build Complete!                    "
echo "--------------------------------------"
