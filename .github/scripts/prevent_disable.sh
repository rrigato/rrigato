#!/bin/bash

current_tags=$(git tag)

echo $current_tags

if [ $(date +%d) = "18" ]; then
    echo "adding unnecessary tag"
fi