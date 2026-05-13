#!/bin/bash

# Script to set up a Python virtual environment and install scapy
# This script automates the fix for the externally-managed-environment error

set -e

VENV_DIR="venv"

echo "Setting up Python virtual environment for scapy..."

# Step 1: Create a new virtual environment named "venv"
echo "1. Creating virtual environment in '$VENV_DIR'..."
python3 -m venv "$VENV_DIR"

# Step 2: Activate the virtual environment
echo "2. Activating virtual environment..."
source "$VENV_DIR/bin/activate"

# Step 3: Install scapy within this environment using pip
echo "3. Installing scapy..."
pip install scapy

# Step 4: Deactivate is not needed in the script as it will end
echo "4. Setup complete!"
echo ""
echo "To use the virtual environment in the future:"
echo "  - Activate it with:   source $VENV_DIR/bin/activate"
echo "  - Deactivate it with: deactivate"
echo ""
echo "You can now run the script with:"
echo "  source $VENV_DIR/bin/activate"
echo "  python3 sllv2-to-eth.py input.pcap output.pcap --src-mac aa:bb:cc:dd:ee:11 --dst-mac ff:ee:dd:cc:bb:22"
