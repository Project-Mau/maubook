#!/bin/bash

# Terminate if a command fails
set -e

# Get the shared variables
source scripts/common.sh

# Directory name for the clone
CLONE_DIR=website-$(date +%Y%m%d-%H%M%S)

cp -r ${WEBSITE_DIR_ROOT} ${CLONE_DIR}

# Run the website script with the same name
cd ${CLONE_DIR}
scripts/clone.sh

echo "Clone ready at ${CLONE_DIR}"
