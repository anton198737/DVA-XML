<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
	<html>
	<head>
		<title>Tutorial XML + CSS</title>
		<link rel="stylesheet" type="txt/css" href="tutorial.css" />
	</head>
	<body><xsl:apply-templates/></body>
	</html>
</xsl:template>



<xsl:template match="title_sheet">
	<div class="start_site">
	<div class="centered">
	<xsl:apply-templates select="title"/>
	<xsl:apply-templates select="sub_title"/>
	</div>	
	<div class="small_container">
	<p>
	<b><xsl:value-of select="branch_of_study"/></b>
	</p>
	</div>	
	<xsl:apply-templates select="student"/>
	</div>
</xsl:template>

<xsl:template match="title">
	<h1><xsl:value-of select="."/></h1>
</xsl:template>

<xsl:template match="sub_title">
	<h2><xsl:value-of select="."/></h2>
</xsl:template>

<xsl:template match="student">
	Name: <b><xsl:value-of select="name"/></b>
	<p>Matrikelnummer: <xsl:value-of select="matrikel_number"/></p>
</xsl:template>


</xsl:stylesheet>