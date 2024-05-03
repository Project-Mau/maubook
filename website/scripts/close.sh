#!/bin/bash

# Terminate if a command fails
set -e

source ../scripts/common.sh

# Copy back other pages
for i in $(find ${WEBSITE_OTHER_PAGES_DIR} -iname "*.mau")
do
    filename=$(basename ${i})
    echo "${WEBSITE_CONTENT_DIR}/${filename} --> ../${WEBSITE_OTHER_PAGES_DIR_ROOT}"
    mv ${WEBSITE_CONTENT_DIR}/${filename} ../${WEBSITE_OTHER_PAGES_DIR_ROOT}
done

echo

# Copy back sources
for i in $(find ${WEBSITE_CONTENT_DIR} -iname "*.mau")
do
    echo "${i} --> ../${SOURCES_DIR_ROOT}"
    mv ${i} ../${SOURCES_DIR_ROOT}
done
