<?xml version='1.0'?> 
<xsl:stylesheet  
       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0"> 
       <xsl:output method="html"
            encoding="UTF-8"
            indent="no"/>
  <xsl:import href="fo-docbook.xsl"/> 
  <xsl:param name="page.height" select="'9in'"/>
  <xsl:param name="page.width" select="'7in'"/> 
  <xsl:attribute-set name="verbatim.properties">
  <xsl:attribute name="font-size">7.5pt</xsl:attribute>
</xsl:attribute-set>
</xsl:stylesheet> 