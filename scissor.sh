#!/bin/bash
while IFS= read -r item || [ -n "$item" ]; do
    # Skip blank lines and comment lines
    [[ -z "$item" || "$item" =~ ^# ]] && continue
    sudo rm -rf -- "src/$item"
done < debloat-list.txt
