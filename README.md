# The Mau Book 3rd edition

Version: 1.0.0

This is meant to be the comprehensive documentation of the Mau markup language (version 3.x).

You will find the PDF in `pdf/book.pdf`. An initial HTML rendering is available in `html/book.html` but is to be considered a work in progress as the whole book is rendered in a single file without any CSS style.

## Build the book

Install Mau following the instructions in the PDF (or in the file `src/02_Install_and_run_Mau.mau`).

To create the PDF book run

```
make pdf
```

which will generate the file `output/book.pdf`.

Please note that you need to have a working TeX installation to build the documentation.

To create the HTML book run

```
make html
```
