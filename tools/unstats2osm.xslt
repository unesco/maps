<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/> 
    <!-- 
		     Used to convert this city list http://unstats.un.org/unsd/geoinfo/geonames/Cities.ashx to a compliant OSM file
         usage: xsltproc -o cities.osm unstats2osm.xslt http://unstats.un.org/unsd/geoinfo/geonames/Cities.ashx 
		     to be used with osmtogeojson cities.osm > cities.geojson (npm install -g osmtogeojson)
		-->
    <xsl:template match="/">
        <xsl:element name="osm">
            <xsl:attribute name="version">0.6</xsl:attribute>
            <xsl:attribute name="generator">xslt</xsl:attribute>
            <xsl:apply-templates select="Cities/City"/>
        </xsl:element>                            
    </xsl:template>
	<xsl:template match="Cities/City">
        <xsl:element name="node">
            <xsl:attribute name="id"><xsl:value-of select = "-position()" /></xsl:attribute>
            <xsl:attribute name="lat"><xsl:value-of select = "substring-after(Point/Coordinates,',')" /></xsl:attribute>
            <xsl:attribute name="lon"><xsl:value-of select = "substring-before(Point/Coordinates,',')" /></xsl:attribute>
            <xsl:if test="English">
                <xsl:element name="tag">
                    <xsl:attribute name="k">name:en</xsl:attribute>
                    <xsl:attribute name="v"><xsl:value-of select = "English" /></xsl:attribute>
                </xsl:element>
            </xsl:if>
            <xsl:if test="not(English)">
                <xsl:apply-templates select="*[position()=last()]"/>
			</xsl:if>
            <xsl:if test="_RGB">
                <xsl:element name="tag">
                    <xsl:attribute name="k">is_capital</xsl:attribute>
                    <xsl:attribute name="v">country</xsl:attribute>
                </xsl:element>
            </xsl:if>
        </xsl:element>
    </xsl:template>
    <xsl:template match="*">
        <xsl:element name="tag">
            <xsl:attribute name="k">name:en</xsl:attribute>
            <xsl:attribute name="v"><xsl:value-of select = "current()" /></xsl:attribute>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>