#!/bin/bash

# Terminate if a command fails
set -e

OUT_DIR=pdf
TMP_DIR=${OUT_DIR}/tmp
SRC_DIR=src

FILENAME=book
TEX_FILE=${TMP_DIR}/${FILENAME}.tex

if [[ ! -d ${OUT_DIR} ]]; then mkdir ${OUT_DIR}; fi
if [[ ! -d ${TMP_DIR} ]]; then mkdir ${TMP_DIR}; fi

mau -c mau/pdf.yaml -i ${FILENAME}.mau -o ${TEX_FILE} -f tex

pdflatex -shell-escape ${TEX_FILE}
pdflatex -shell-escape ${TEX_FILE}

mv *.aux *.log *.out *.toc _minted* ${TMP_DIR}
mv *.pdf ${OUT_DIR}
