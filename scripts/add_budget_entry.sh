#!/bin/bash

BUDGETFILE=~/my_budget

# Prompt the user to enter the amount spent
read -p "Enter the amount spent: " amount

# Use the select_category.sh script to choose a category
category=$(budget_category.sh)

# Check if a category was selected
if [[ "$category" == "No category selected." ]]; then
    echo "Category selection canceled. Exiting."
    exit 1
fi

# Log the entry in a file
echo "$(date +%Y-%m-%d), $amount, $category" >> $BUDGETFILE
echo "Logged: $amount in $category"
