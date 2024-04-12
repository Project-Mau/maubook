#!/bin/bash

# Terminate if a command fails
set -e

# OUT_DIR=html
SRC_DIR=src
WEBSITE_DIR=website
WEBSITE_SRC_DIR=${WEBSITE_DIR}/pages
WEBSITE_CONTENT_DIR=${WEBSITE_DIR}/content/pages
WEBSITE_OUTPUT_DIR=${WEBSITE_DIR}/output
WEBSITE_GHPAGES_DIR=${WEBSITE_DIR}/ghpages

# Copy the source files
cp ${SRC_DIR}/*.mau ${WEBSITE_CONTENT_DIR}
cp ${WEBSITE_SRC_DIR}/*.mau ${WEBSITE_CONTENT_DIR}

# Build the website
cd ${WEBSITE_DIR}
make html

if [[ ! -d ${WEBSITE_GHPAGES_DIR} ]]; then echo "The GH Pages directory doesn't exist. Skipping that phase."; exit 0; fi

cp -r ${WEBSITE_OUTPUT_DIR}/* ${WEBSITE_GHPAGES_DIR}

echo "HTML files copied to ${WEBSITE_GHPAGES_DIR}. You have to manually publish them."
