#!/bin/bash

# Terminate if a command fails
set -e

if [[ $# -lt 1 ]]; then echo "$0 COMMAND"; exit 1; fi

# OUT_DIR=html
SRC_DIR=src
WEBSITE_DIR=website
WEBSITE_SRC_DIR=${WEBSITE_DIR}/pages
WEBSITE_CONTENT_DIR=${WEBSITE_DIR}/content/pages
WEBSITE_OUTPUT_DIR=output
WEBSITE_GHPAGES_DIR=ghpages

# Copy the source files
cp ${SRC_DIR}/*.mau ${WEBSITE_CONTENT_DIR}
cp ${WEBSITE_SRC_DIR}/*.mau ${WEBSITE_CONTENT_DIR}

# Build the website
cd ${WEBSITE_DIR}
make $1
