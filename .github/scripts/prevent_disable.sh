#!/bin/bash

#puts the static string replace where the second . is
# example
# v1.1.0 -> v1.1replace0
current_tag=$(git tag | tail -1 | sed 's/\./replace/2')
echo "current_tag - ${current_tag}"
echo "current_minor_version - ${current_tag##*replace}"

new_minor_version=$((${current_tag##*replace} + 1))
echo "new_minor_version - ${new_minor_version}"

tag_without_minor_version="${current_tag%replace*}."
echo "tag_without_minor_version - ${tag_without_minor_version}"

new_tag=${tag_without_minor_version}${new_minor_version}
echo "tag_without_minor_version - ${tag_without_minor_version}"

echo $current_tag
echo $((${current_tag##*replace} + 1))

if [ $(date +%d) = "18" ]; then
    echo "adding unnecessary tag"
fi

git tag