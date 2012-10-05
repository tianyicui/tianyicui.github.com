ASCIIDOC=asciidoc
SED=gsed

%.html: %.txt
	$(ASCIIDOC) $<
	$(SED) -i -f GoogleAnalytics.sed $@

all : index.html resume.html
