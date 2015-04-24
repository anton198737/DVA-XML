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



<xsl:template match="subject">
	<div id="small_border"/>
	<div class="start_site">
		<xsl:apply-templates select="title_sheet"/>
	</div>
	<xsl:apply-templates select="main_article"/>
</xsl:template>

<xsl:template match="title_sheet">
	
	<div class="centred container">
		<h1><xsl:value-of select="main_title"/></h1>
		<h2><xsl:value-of select="main_sub_title"/></h2>	
	</div>	
	<div class="container">
		<xsl:value-of select="short_description"/>
	</div>
	<div class="small_container_align_mid">
		<p>
			<h3><xsl:value-of select="branch_of_study"/></h3>
		</p>
	</div>	
	<xsl:apply-templates select="student"/>
</xsl:template>

<xsl:template match="student">
	Name: <b><xsl:value-of select="name"/></b>
	<p>Matrikelnummer: <xsl:value-of select="matrikel_number"/></p>
</xsl:template>

<xsl:template match="main_article">
	<div class="site">
		<xsl:apply-templates select="article"/>
	</div>
</xsl:template>

<xsl:template match="article">
	<div class="site">
		<h3><xsl:value-of select="number"/><xsl:value-of select="title"/></h3>
		<p>
			<xsl:value-of select="text"/>
		</p>
		<xsl:apply-templates select="subarticle"/>
	</div>
</xsl:template>

<xsl:template match="subarticle">
	<h4><xsl:value-of select="number"/><xsl:value-of select="title"/></h4>
	<p>
	<xsl:value-of select="text"/>
	</p>
</xsl:template>


</xsl:stylesheet>