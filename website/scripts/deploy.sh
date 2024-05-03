#!/bin/bash

# Terminate if a command fails
set -e

source ../scripts/common.sh

# Remove old source files
rm ${WEBSITE_CONTENT_DIR}/*.mau

# Copy the source files
cp ../${SOURCES_DIR_ROOT}/*.mau ${WEBSITE_CONTENT_DIR}

# Copy other pages
cp ${WEBSITE_OTHER_PAGES_DIR}/*.mau ${WEBSITE_CONTENT_DIR}

make html

if [[ ! -d ${WEBSITE_GHPAGES_DIR} ]]; then echo "The GH Pages directory doesn't exist. Skipping that phase."; exit 0; fi

cp -r ${WEBSITE_OUTPUT_DIR}/* ${WEBSITE_GHPAGES_DIR}

echo "HTML files copied to ${WEBSITE_GHPAGES_DIR}. You have to manually publish them."
