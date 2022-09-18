#!/bin/bash

current_tags=$(git tag | tail -1 )

git tag 

git status

echo "---current status---"
echo $current_tags

if [ $(date +%d) = "18" ]; then
    echo "adding unnecessary tag"
fi