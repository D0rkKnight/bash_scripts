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

# Check if the function sourcing already exists in .bashrc
if ! grep -q "source ~/bash_scripts/functions.sh" ~/.bashrc; then
    echo "Adding function sourcing to .bashrc..."
    echo "source ~/bash_scripts/functions.sh" >> ~/.bashrc
    echo "Done! Functions are now sourced from .bashrc."
else
    echo "Function sourcing is already in .bashrc."
fi

# Loading in custom script functions
source functions.sh