<?xml version = "1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" encoding="UTF-8" />
	<xsl:variable name="delimiter" select="','" /> 




	<xsl:variable name="fieldArray">

		<field>entity['ancestor_section']</field>


		<field>entity['name']</field>






		<field>entity['value']</field>
	    <field>entity['status']</field>
	    <field>entity['certainty']</field>
	    <field>entity['cui']</field>
	    <field>entity['tui']</field>
	    <field>entity['rank']</field>
	    <field>entity['code']</field>
	    <field>entity['sourceType']</field>
	   	<field>entity['unit']</field>
	   	<field>entity['unitBegin']</field>
	   	<field>entity['unitEnd']</field>


	   	<field>entity['strength']</field>
	    <field>entity['strengthUnit']</field>
	    <field>entity['dosage']</field>
	    <field>entity['form']</field>
	    <field>entity['frequency']</field>
	    <field>entity['frequencyUnit']</field>
	    <field>entity['route']</field>


  	</xsl:variable>

  <xsl:param name="fields" select="document('')/*/xsl:variable[@name='fieldArray']/*" />




	



  	<xsl:template match = "/">




  		<!-- output the header row -->
	    <xsl:for-each select="$fields">
	      <xsl:if test="position() != 1">
	        <xsl:value-of select="$delimiter"/>
	      </xsl:if>
	      <xsl:value-of select="." />
	    </xsl:for-each>

	    <!-- output newline -->
	    <xsl:text>&#xa;</xsl:text>







	  	<xsl:for-each select = "//*[not(*) and name()!='Section' and name()!='Paragraph' and name()!='Sentence' and name()!='Relation' and name()!='RelationSet']">


	  	<xsl:text>"</xsl:text>
		<xsl:value-of select = "ancestor::Section/@value" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>

		<xsl:text>"</xsl:text>
		<xsl:value-of select = "name()" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>




		


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@value" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>

		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@status" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@certainty" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>

		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@cui" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>

		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@tui" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>



		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@rank" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@code" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@sourceType" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@unit" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@unitBegin" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@unitEnd" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@strength" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@strengthUnit" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>



		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@dosage" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>

		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@form" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@frequency" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>


		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@frequencyUnit" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$delimiter"/>

		<xsl:text>"</xsl:text>
		<xsl:value-of select = "@route" />
		<xsl:text>"</xsl:text>







	    <xsl:text>&#xa;</xsl:text>

	  	</xsl:for-each>
  	</xsl:template>













</xsl:stylesheet>

