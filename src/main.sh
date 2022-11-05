#!/bin/bash

set -e

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# shellcheck source=./common.sh
((__LOADED)) || . "$SCRIPT_DIR"/common.sh

# loop args
json=${1-}
[[ -n $json ]] || die "No JSON file specified"

NPM_TOKEN=$(jq -r '.NPM_TOKEN' "$json")
GITHUB_TOKEN=$(jq -r '.GITHUB_TOKEN' "$json")
NPM_REGISTRY=$(jq -r '.NPM_REGISTRY' "$json")
PUBLISH_SCRIPT=$(jq -r '.PUBLISH_SCRIPT' "$json")
PRERELEASE_SCRIPTS=$(jq -r '.PRERELEASE_SCRIPTS' "$json")
NO_BAIL=$(jq -r '.NO_BAIL' "$json")
BAIL_ON_MISSING=$(jq -r '.BAIL_ON_MISSING' "$json")
DRY_RUN=$(jq -r '.DRY_RUN' "$json")
DEBUG=$(jq -r '.DEBUG' "$json")
CONFIG_ONLY=$(jq -r '.CONFIG_ONLY' "$json")
PRERELEASE_ONLY=$(jq -r '.PRERELEASE_ONLY' "$json")

echo "PUBLISH_SCRIPT: $PUBLISH_SCRIPT"
echo "PRERELEASE_SCRIPTS: $PRERELEASE_SCRIPTS"
echo "NO_BAIL: $NO_BAIL"
echo "BAIL_ON_MISSING: $BAIL_ON_MISSING"
echo "DRY_RUN: $DRY_RUN"
echo "DEBUG: $DEBUG"
echo "CONFIG_ONLY: $CONFIG_ONLY"
echo "PRERELEASE_ONLY: $PRERELEASE_ONLY"
