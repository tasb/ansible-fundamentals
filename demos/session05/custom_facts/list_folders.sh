#!/bin/bash

# Specify the target directory
TARGET_DIR="/tmp"

# Gather the list of directories
DIR_LIST=$(find "$TARGET_DIR" -maxdepth 1 -type d | sed "s|^$TARGET_DIR/||" | sed '/^$/d' | tr '\n' ',' | sed 's/,$//')

# Return as JSON
echo "{\"directories\": [\"$DIR_LIST\"]}"
