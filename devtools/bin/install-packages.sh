#!/bin/bash

PACKAGES="$1"

while read -r package; do
  if [[ -n "$package" && ! "$package" =~ ^# ]]; then
    echo "* Installing ${package}..."
    brew install "$package"
  fi
done < "$PACKAGES"

exit 0;
