#!/bin/bash

current_tags=$(git tag | tail -1 | sed 's/\./replace/2')

git tag 

git status

echo "---current status---"
echo ${current_tags#*remove}

if [ $(date +%d) = "18" ]; then
    echo "adding unnecessary tag"
fi