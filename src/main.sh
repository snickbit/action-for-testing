#!/bin/bash

set -e

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# shellcheck source=./common.sh
((__LOADED)) || . "$SCRIPT_DIR"/common.sh

# loop args
json=${1-}
[[ -n $json ]] || die "No JSON file specified"

NPM_TOKEN=$(echo "$json" | jq -r '.NPM_TOKEN')
GITHUB_TOKEN=$(echo "$json" | jq -r '.GITHUB_TOKEN')
NPM_REGISTRY=$(echo "$json" | jq -r '.NPM_REGISTRY')
PUBLISH_SCRIPT=$(echo "$json" | jq -r '.PUBLISH_SCRIPT')
PRERELEASE_SCRIPTS=$(echo "$json" | jq -r '.PRERELEASE_SCRIPTS')
NO_BAIL=$(echo "$json" | jq -r '.NO_BAIL')
BAIL_ON_MISSING=$(echo "$json" | jq -r '.BAIL_ON_MISSING')
DRY_RUN=$(echo "$json" | jq -r '.DRY_RUN')
DEBUG=$(echo "$json" | jq -r '.DEBUG')
CONFIG_ONLY=$(echo "$json" | jq -r '.CONFIG_ONLY')
PRERELEASE_ONLY=$(echo "$json" | jq -r '.PRERELEASE_ONLY')

echo "PUBLISH_SCRIPT: $PUBLISH_SCRIPT"
echo "PRERELEASE_SCRIPTS: $PRERELEASE_SCRIPTS"
echo "NO_BAIL: $NO_BAIL"
echo "BAIL_ON_MISSING: $BAIL_ON_MISSING"
echo "DRY_RUN: $DRY_RUN"
echo "DEBUG: $DEBUG"
echo "CONFIG_ONLY: $CONFIG_ONLY"
echo "PRERELEASE_ONLY: $PRERELEASE_ONLY"
