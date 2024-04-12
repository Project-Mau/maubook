#!/bin/bash

# Terminate if a command fails
set -e

WORK_DIR=pdf

SOURCE_MAU_FILE=book.mau
OUTPUT_DIR=output
AUX_DIR=aux

SOURCE_TEX_FILE=${SOURCE_MAU_FILE/mau/tex}

if [[ ! -d ${OUTPUT_DIR} ]]; then mkdir ${OUTPUT_DIR}; fi
if [[ ! -d ${AUX_DIR} ]]; then mkdir ${AUX_DIR}; fi

# Build the TeX source
cd ${WORK_DIR}
mau --verbose -c mau/conf.yaml -i ${SOURCE_MAU_FILE} -o ${SOURCE_TEX_FILE} -f tex

# Build the PDF
pdflatex -shell-escape ${SOURCE_TEX_FILE}
pdflatex -shell-escape ${SOURCE_TEX_FILE}

rm -fr ${AUX_DIR}/*
mv *.aux *.log *.out *.toc _minted* ${AUX_DIR}
mv *.pdf ${OUTPUT_DIR}

echo
echo "Book saved in ${WORK_DIR}/${OUTPUT_DIR}/${SOURCE_MAU_FILE/mau/pdf}"
