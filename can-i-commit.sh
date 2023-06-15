#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
NC="\033[0m"

git_dir=$(git rev-parse --git-dir 2>/dev/null)

if [ -z "$git_dir" ]; then
    echo "This isn't a git repository"
    exit 1
fi

files=$(git diff --name-only --diff-filter=ACMRTUXB | xargs git grep -l -E 'console\.')
slash_files=$(git diff --name-only --diff-filter=ACMRTUXB | xargs grep -l -E '//')

if [ -z "$files" ] && [ -z "$slash_files" ]; then
    echo -e "${GREEN}You can commit${NC}"
else
    if [ -n "$files" ]; then
        echo -e "${RED}Files with 'console.' occurrences:${NC}"
        echo -e "${RED}$files${NC}"
    fi
    if [ -n "$slash_files" ]; then
        echo -e "${YELLOW}Files with '//' occurrences:${NC}"
        echo -e "${YELLOW}$slash_files${NC}"
    fi
fi
