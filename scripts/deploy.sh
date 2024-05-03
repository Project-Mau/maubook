#!/bin/bash

# Terminate if a command fails
set -e

# Get the shared variables
source scripts/common.sh

# Run the website script with the same name
cd ${WEBSITE_DIR_ROOT}
scripts/$(basename $0)
