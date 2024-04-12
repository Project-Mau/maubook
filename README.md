# The Mau Book 4rd edition

This is meant to be the comprehensive documentation of the Mau markup language (version 4.x).

The Mau source code can be found in `src`. You will find the PDF in `pdf/output/book.pdf`. The code of the website is in `website/ghpages`.

## Build the PDF

Install Mau and the visitor plugin.

```
pip install mau mau-pdf-visitor
```

To create the PDF book run

```
make pdf
```

Please note that you need to have a working TeX installation to build the documentation.

## Build the website

Install Mau, the visitor plugin, and Pelican

```
pip install mau mau-html-visitor pelican pelican-mau-reader
```

To create the website

```
make html
```

## Contributions

Please feel free to contribute fixing typos or other mistakes by [submitting PRs](https://github.com/Project-Mau/maubook/pulls) or [opening issues](https://github.com/Project-Mau/maubook/issues).
