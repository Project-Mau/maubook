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

