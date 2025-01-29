#!/bin/bash

# Print header
printf "%-30s %s\n" "PACKAGE" "DESCRIPTION"
printf "%-30s %s\n" "-------" "-----------"

# Get list of installed packages and their descriptions
brew list --formula | while read -r package; do
    # Get description using brew info, taking the line after the version info
    description=$(brew info "$package" | sed -n '/^==> /!p' | grep -v "^$" | head -n 1 | sed 's/^[ \t]*//')
    printf "%-30s %s\n" "$package" "$description"
done
