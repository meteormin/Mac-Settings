#!/bin/bash

PACKAGE_FILE="$1"
CURRENT_SECTION=""

# Check if the package file exists
if [ ! -f "$PACKAGE_FILE" ]; then
    echo "Error: Package file '$PACKAGE_FILE' not found."
    exit 1
fi

echo "Homebrew package installer"

echo "First, Updating Homebrew..."

brew update

echo "Starting Homebrew package installation from '$PACKAGE_FILE'..."

# Read the file line by line
while IFS= read -r line; do
    # Remove leading/trailing whitespace
    line=$(echo "$line" | xargs)

    # Skip empty lines or comment lines
    if [[ -z "$line" || "$line" =~ ^# ]]; then
        continue
    fi

    # Check for a new section header (e.g., [formulae], [cask])
    if [[ "$line" =~ ^\[.*\]$ ]]; then
        CURRENT_SECTION=$(echo "$line" | sed 's/\[\(.*\)\]/\1/')
        echo "Processing section: ${CURRENT_SECTION}..."
        continue
    fi

    # Install packages based on the current section
    if [[ "$CURRENT_SECTION" == "cask" ]]; then
        echo "* Installing Cask: ${line}..."
        brew install --cask "$line"
    elif [[ "$CURRENT_SECTION" == "formulae" ]]; then
        echo "* Installing Formula: ${line}..."
        brew install "$line"
    else
        echo "Warning: Unrecognized section or package '$line'. Skipping."
    fi

done < "$PACKAGE_FILE"

echo "Homebrew installation complete."

exit 0
