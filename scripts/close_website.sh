#!/bin/bash

# Terminate if a command fails
set -e

# Check arguments
if [[ -z $1 ]]; then echo "$0 CLONEDIR"; exit 1; fi

# Check cloned dir
if [[ ! -d $1 ]]; then echo "Directory $1 does not exists"; exit 1; fi

# Get the shared variables
source scripts/common.sh

# Directory name for the clone
CLONE_DIR=$1

# Run the website script with the same name
cd ${CLONE_DIR}
scripts/close.sh

echo "Closed clone at ${CLONE_DIR}"
echo "To remove it run"
echo "rm -fR ${CLONE_DIR}"
