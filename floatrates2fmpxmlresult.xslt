<?xml version="1.0" encoding="utf-8"?>
<!--
     Written by Gjermund G Thorsen 1999 - 2018, all rights deserved
     for the purpose of making available exchange rates in FileMaker 5 and up
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method='xml' version='1.0' encoding='iso-8859-1' indent='yes' />
  <xsl:template match="/*">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <ERRORCODE>0</ERRORCODE>
      <PRODUCT BUILD="GGT667 for FM5 and up" NAME="floatrates" VERSION="v1" />
      <DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="floatrate" NAME="currencyrate" RECORDS="{count(//channel/item)}" TIMEFORMAT="h:mm:ss a" />
      <METADATA>
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="title" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="link" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="description" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="pubDate" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="baseCurrency" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="baseName" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="targetCurrency" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="targetName" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="exchangeRate" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="inverseRate" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="inverseDescription" TYPE="TEXT" />
      </METADATA>
      <RESULTSET FOUND="{count(//channel/item)}">
        <xsl:apply-templates select="//channel/item" />
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
  <xsl:template match="//channel/item">
    <ROW xmlns="http://www.filemaker.com/fmpxmlresult" MODID="0" RECORDID="{position()}">
      <COL><DATA><xsl:value-of select="title" /></DATA></COL>
      <COL><DATA><xsl:value-of select="link" /></DATA></COL>
      <COL><DATA><xsl:value-of select="description" /></DATA></COL>
      <COL><DATA><xsl:value-of select="pubDate" /></DATA></COL>
      <COL><DATA><xsl:value-of select="baseCurrency" /></DATA></COL>
      <COL><DATA><xsl:value-of select="baseName" /></DATA></COL>
      <COL><DATA><xsl:value-of select="targetCurrency" /></DATA></COL>
      <COL><DATA><xsl:value-of select="targetName" /></DATA></COL>
      <COL><DATA><xsl:value-of select="exchangeRate" /></DATA></COL>
      <COL><DATA><xsl:value-of select="inverseRate" /></DATA></COL>
      <COL><DATA><xsl:value-of select="inverseDescription" /></DATA></COL>
    </ROW>
  </xsl:template>
</xsl:stylesheet>
