#!/bin/bash

# Terminate if a command fails
set -e

OUT_DIR=html
SRC_DIR=src

FILENAME=book
HTML_FILE=${OUT_DIR}/${FILENAME}.html

if [[ ! -d ${OUT_DIR} ]]; then mkdir ${OUT_DIR}; fi

mau -c mau/html.yaml -i ${FILENAME}.mau -o ${HTML_FILE} -f html
