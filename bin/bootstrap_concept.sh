#!/usr/bin/env bash

# Exit if anything fails.
set -euo pipefail

# If argument not provided, print usage and exit
if [ $# -ne 1 ]; then
    echo "Usage: bin/bootstrap_concept.sh <exercise-slug>"
    exit 1
fi

SLUG="$1"
concept_dir="concepts/${SLUG}"

# build configlet
echo "Fetching latest version of configlet..."
./bin/fetch-configlet

# Preparing config.json
echo "Adding instructions and configuration files..."
NAME=$(echo $SLUG | sed -e 's/-/ /g' -e 's/\b\(.\)/\u\1/g' )
UUID=$(bin/configlet uuid)
jq --arg slug "$SLUG" --arg name "$NAME" --arg uuid "$UUID" \
    '.concepts += [{uuid: $uuid, slug: $slug, name: $name}]' \
    config.json > config.json.tmp
mv config.json.tmp config.json

# Create instructions and config files
mkdir $concept_dir/
mkdir $concept_dir/.meta/
cp .templates/concept/config.json $concept_dir/.meta/
echo "# Introduction" > $concept_dir/introduction.md
echo "# About" > $concept_dir/about.md
cp .templates/concept/links.json $concept_dir/

