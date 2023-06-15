#!/bin/bash

SOURCE_DIR=$(pwd)
TARGET_DIR="/usr/local/bin"

# Replace target dir with next line if you want to avoid changing .zshrc
# TARGET_DIR="."

GREEN="\033[0;32m"
NC="\033[0m"

# Find all .sh files inside the source directory
sh_files=$(find "$SOURCE_DIR" -type f -name "*.sh")

# Change all shell scripts to have executeable permissions
# Create symbolic links for each .sh file in the target directory
for file in $sh_files; do
    filename=$(basename "$file")
    echo changing $filename permissions and linking it
    chmod +x $filename
    ln -s "$SOURCE_DIR/$filename" "$TARGET_DIR/${filename%.*}"
    echo -e "${GREEN}Linked '$file' to '$TARGET_DIR/${filename%.*}${NC}"
done