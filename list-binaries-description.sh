#!/bin/bash

# Print header
printf "%-30s %s\n" "BINARY" "DESCRIPTION"
printf "%-30s %s\n" "------" "-----------"

# Function to get package name from binary
get_package_name() {
    local binary=$1
    # Use brew to find which package owns this binary
    local package=$(brew which-formula "$binary" 2>/dev/null)
    if [ -z "$package" ]; then
        echo "unknown"
    else
        echo "$package"
    fi
}

# Function to get description for a package
get_description() {
    local package=$1
    if [ "$package" = "unknown" ]; then
        echo "No package information available"
    else
        brew info "$package" 2>/dev/null | sed -n '/^==> /!p' | grep -v "^$" | head -n 1 | sed 's/^[ \t]*//'
    fi
}

# Process each binary in /opt/homebrew/bin
for binary in /opt/homebrew/bin/*; do
    # Skip if not a file or not executable
    [ -f "$binary" ] || continue
    [ -x "$binary" ] || continue
    
    # Get just the filename
    binary_name=$(basename "$binary")
    
    # Get package name and description
    package=$(get_package_name "$binary_name")
    description=$(get_description "$package")
    
    # Print the information
    printf "%-30s %s\n" "$binary_name" "$description"
done
