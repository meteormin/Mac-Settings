#!/usr/bin/env zsh

PACKAGES="packages.txt"

echo "Installing packages..."

echo "[brew] checking..."
./bin/install-brew.sh

echo "[packages] installing..."
./bin/install-packages.sh "$PACKAGES"

echo "Done."

exit 0
