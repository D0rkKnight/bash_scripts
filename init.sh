#!/bin/bash

# Define the custom scripts directory
custom_scripts_dir=~/bash_scripts/bin

# Check if the PATH addition already exists in .bashrc
if ! grep -q "export PATH=\$PATH:$custom_scripts_dir" ~/.bashrc; then
    echo "Adding custom scripts directory to PATH..."
    echo "export PATH=\$PATH:$custom_scripts_dir" >> ~/.bashrc
    echo "Done! Restart your terminal or run 'source ~/.bashrc'."
else
    echo "Custom scripts directory is already in PATH."
fi

# Loading in custom script functions
source functions.sh