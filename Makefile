XSLTPROC=/usr/bin/xsltproc
FOP=/usr/bin/fop
export XML_CATALOG_FILES=file:///home/trochej/Projects/sohozfs/catalog.xml

html:
	${XSLTPROC} -o sohozfs.html --stringparam html.stylesheet css/elements.css docbook.xsl sohozfs.book.xml

clean: 
	rm sohozfs.html 

pdf:
	${XSLTPROC} -xinclude -o sohozfs.fo custom.xsl sohozfs.book.xml
	${FOP} sohozfs.fo -pdf sohozfs.pdf

