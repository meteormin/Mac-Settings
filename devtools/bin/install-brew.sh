#!/bin/bash

PACKAGES="packages.txt"

if ! command -v brew &> /dev/null;then
  echo "Homebrew is not installed."
  echo "Installing Homebrew..."
  install_brew=$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
  echo $install_brew

  echo "Install Homebrew successfully."
  echo "Try install cask"
  brew install cask
  echo "Install cask successfully."
else
  echo "Homebrew is already installed."
fi

exit 0;
