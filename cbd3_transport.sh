#!/bin/bash

echo "This script is meant to run properly on Ubuntu desktop as well as other Debain based distribution systems."

# Check if required tools are installed
tools_missing=0

# Function to check if a command exists
check_command() {
    if ! command -v "$1" &> /dev/null; then
        echo "Error: $1 is not installed."
        tools_missing=1
    else
        echo "✓ $1 is already installed."
    fi
}

# Check for required tools
check_command sumo
check_command sumo-gui
check_command netconvert

# Check if sumo-tools is installed (checking for randomTrips.py)
if [ ! -f "/usr/share/sumo/tools/randomTrips.py" ]; then
    echo "Error: sumo-tools is not installed or randomTrips.py not found."
    tools_missing=1
else
    echo "✓ sumo-tools is already installed."
fi

# Exit if any tools are missing
if [ $tools_missing -eq 1 ]; then
    echo "------------------------------------------------"
    echo "Installation requirements not satisfied. Please install missing tools:"
    echo "    sudo apt update"
    echo "    sudo apt install sumo sumo-tools sumo-doc"
    echo "This will install all required components (sumo, sumo-gui, netconvert, and sumo-tools)."
    echo "------------------------------------------------"
    exit 1
fi

# Main script execution
echo "Starting SUMO simulation..."
cd cbd3/ && \
#netconvert -c cbd.netccfg && \
netconvert \
  --node-files=cbd_nodes.nod.xml \
  --edge-files=cbd_edges.edg.xml \
  --type-files=cbd_types.type.xml \
  --output-file=cbd.net.xml \
  --geometry.remove &&\
/usr/share/sumo/tools/randomTrips.py -n cbd.net.xml -o cbd.rou.xml -r cbd.trips.xml \
    --prefix veh --end 21600 --validate --seed 42 \
    --trip-attributes="departLane=\"best\" departSpeed=\"max\" departPos=\"random\"" && \
sumo-gui -c cbd.sumocfg