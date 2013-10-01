<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="Heroes">
    <Heroes>
      <xsl:apply-templates/>
    </Heroes>
  </xsl:template>
  <xsl:template match="Hero">
    <Hero>
      <xsl:attribute name="name">
        <xsl:value-of select="Name"/>
      </xsl:attribute>
      <xsl:attribute name="class">
        <xsl:value-of select="Class"/>
      </xsl:attribute>
      <xsl:attribute name="weapon">
        <xsl:value-of select="Weapon"/>
      </xsl:attribute>
      <xsl:attribute name="skill1">
        <xsl:value-of select="Skill1"/>
      </xsl:attribute>
      <xsl:attribute name="skill2">
        <xsl:value-of select="Skill2"/>
      </xsl:attribute>
      <xsl:attribute name="skill3">
        <xsl:value-of select="Skill3"/>
      </xsl:attribute>
      <xsl:attribute name="skill4">
        <xsl:value-of select="Skill4"/>
      </xsl:attribute>
      <xsl:attribute name="race">
        <xsl:value-of select="Race"/>
      </xsl:attribute>
    </Hero>
  </xsl:template>
</xsl:stylesheet>
