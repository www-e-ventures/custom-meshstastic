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

echo "--------------------------------------"
echo "   Build Complete!                    "
echo "--------------------------------------"