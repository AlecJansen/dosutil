#!/bin/bash
# Alec Jansen
# This script performs basic UNIX file management functions for DOS/Windows users.
# It accepts a DOS-style command as the first parameter and executes the equivalent UNIX command.
# Revision Date: 2025-06-04

# Variables:
COMMAND=$1
PARAMETER2=$2
PARAMETER3=$3

# Outputs the author of the file
author() {
    echo "The author of this file is: Jansen, Alec"
}

# Outputs the contents of a file (equivalent of 'type')
type() {
    if [[ -f $PARAMETER2 ]]; then
        echo "Contents of $PARAMETER2:"
        cat "$PARAMETER2"
    else
        echo "Error: '$PARAMETER2' is not a valid file."
    fi
}

# Copy a file
copy() {
    cp "$PARAMETER2" "$PARAMETER3" && echo "Copied '$PARAMETER2' to '$PARAMETER3'."
}

# Rename a file
ren() {
    mv "$PARAMETER2" "$PARAMETER3" && echo "Renamed '$PARAMETER2' to '$PARAMETER3'."
}

# Move a file to a new location
move() {
    mv "$PARAMETER2" "$PARAMETER3" && echo "Moved '$PARAMETER2' to '$PARAMETER3'."
}

# Delete a file
del() {
    rm -i "$PARAMETER2"
}

# Validate input parameters
validate() {
    for param in "$PARAMETER2" "$PARAMETER3"; do
        if [[ -d $param ]]; then
            echo "'$param' is a directory."
        elif [[ -f $param ]]; then
            echo "'$param' is a file."
        else
            echo "Warning: '$param' does not exist."
        fi
    done
}

# List supported commands
help() {
    echo "Supported commands:"
    echo "  author   - Outputs author's name"
    echo "  type     - Outputs the contents of the specified file"
    echo "  copy     - Copies a file"
    echo "  ren      - Renames a file"
    echo "  move     - Moves a file"
    echo "  del      - Deletes a file"
}

# Main logic
case "$COMMAND" in
    author) author ;;
    type) validate; type ;;
    copy) validate; copy ;;
    ren) validate; ren ;;
    move) validate; move ;;
    del) validate; del ;;
    *) help ;;
esac
