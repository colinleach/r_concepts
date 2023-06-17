#!/usr/bin/env bash

# Exit if anything fails.
set -euo pipefail

# If argument not provided, print usage and exit
if [ $# -ne 1 ]; then
    echo "Usage: bin/bootstrap_concept_exercise.sh <exercise-slug>"
    exit 1
fi

SLUG="$1"
exercise_dir="exercises/concept/${SLUG}"

# build configlet
echo "Fetching latest version of configlet..."
./bin/fetch-configlet

# Preparing config.json
echo "Adding instructions and configuration files..."
NAME=$(echo $SLUG | sed -e 's/-/ /g' -e 's/\b\(.\)/\u\1/g' )
UUID=$(bin/configlet uuid)
jq --arg slug "$SLUG" --arg name "$NAME" --arg uuid "$UUID" \
    '.exercises.concept += [{slug: $slug, name: $name, uuid: $uuid, concepts: [], prerequisites: [], status: "wip" }]' \
    config.json > config.json.tmp
mv config.json.tmp config.json

# Create instructions and config files
mkdir $exercise_dir/
mkdir $exercise_dir/.meta/
mkdir $exercise_dir/.docs/

echo "# Design" > $exercise_dir/.meta/design.md
cp .templates/exercise/config.json $exercise_dir/.meta/

echo "# Introduction" > $exercise_dir/.docs/introduction.md
echo "# Instructions" >  $exercise_dir/.docs/instructions.md
echo "# Hints" >  $exercise_dir/.docs/hints.md


# Create R files
touch $exercise_dir/.meta/exemplar.R
touch $exercise_dir/$SLUG.R
touch $exercise_dir/test_$SLUG.R
