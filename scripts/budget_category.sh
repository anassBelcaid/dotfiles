#!/bin/bash

# File where categories are stored
CATEGORY_FILE=~/scripts/categories.txt

# Use fzf to select a category from the list
category=$(cat $CATEGORY_FILE | fzf --height 80% --margin=1,2 --border --prompt="Select a category: ")

# Output the selected category
if [[ -n "$category" ]]; then
    echo "$category"
else
    echo "No category selected."
    exit 1
fi
