XSLTPROC=/usr/bin/xsltproc
FOP=/usr/bin/fop
export XML_CATALOG_FILES=file:///home/trochej/Projects/sohozfs/catalog.xml

html:
	${XSLTPROC} -xinclude -o sohozfs.html --stringparam html.stylesheet css/elements.css /usr/share/xml/docbook/stylesheet/docbook-xsl/xhtml5/docbook.xsl sohozfs.book.xml

clean: 
	rm sohozfs.html 

pdf:
	${XSLTPROC} -xinclude -o sohozfs.fo custom.xsl sohozfs.book.xml
	${FOP} sohozfs.fo -pdf sohozfs.pdf

