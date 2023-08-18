#!/bin/bash

# Terminate if a command fails
set -e

IMAGES_DIR=images

for i in $(ls ${IMAGES_DIR}/*.svg 2>/dev/null)
do
    output=${i/svg/png}
    
    if [[ -f ${output} ]]; then continue; fi
    
    inkscape --export-background-opacity=0 --export-dpi=300 --export-type=png --export-filename=${output} ${i}
done
