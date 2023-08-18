BASEDIR=$(CURDIR)
SCRIPTSDIR=$(BASEDIR)/scripts

help:
	@echo 'Makefile for The Mau Book                                        '
	@echo '                                                                 '
	@echo 'Usage:                                                           '
	@echo '   make html                           generate the HTML version '
	@echo '   make pdf                            generate the PDF version  '

images:
	"$(SCRIPTSDIR)/process_images.sh"

html: images
	"$(SCRIPTSDIR)/create_html.sh"

pdf: images
	"$(SCRIPTSDIR)/create_pdf.sh"
