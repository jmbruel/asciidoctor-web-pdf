#-----------------------------------------------------
# Some usefull instructions...
#
CMD=asciidoctor-web-pdf
#-----------------------------------------------------

examples/slides/slides.pdf: examples/slides/slides.adoc
	@echo "========================================"
	@echo "==> Generating HTML and PDF...          "
	$(CMD) --template-require ./examples/slides/template.js $<

%.pdf: %.adoc
	@echo "========================================"
	@echo "==> Generating HTML and PDF...          "
	$(CMD) $<

