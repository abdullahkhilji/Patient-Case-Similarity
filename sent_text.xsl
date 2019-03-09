<?xml version = "1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" encoding="UTF-8" />
	<xsl:variable name="delimiter" select="','" /> 




	



  	<xsl:template match = "/">










	  	<xsl:for-each select = "//*[name() = 'Sentence']">



			<xsl:value-of select = "@sentText" />




	    <xsl:text>&#xa;</xsl:text>

	  	</xsl:for-each>
  	</xsl:template>













</xsl:stylesheet>

