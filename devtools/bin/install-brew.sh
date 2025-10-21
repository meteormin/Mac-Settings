#!/bin/env zsh

# Check for Homebrew
if ! command -v brew &> /dev/null; then
  echo "Homebrew is not installed."
  echo "Installing Homebrew..."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "✅ Homebrew installed successfully."
else
  echo "✅ Homebrew is already installed."
fi

