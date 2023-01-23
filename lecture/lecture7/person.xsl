<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<Persons>
    <xsl:apply-templates select="/ Persons/ Person"
    />
</Persons>
</xsl:template>

<xsl:template match="Person">
<xsl:copy>

</xsl:copy>
</xsl:template>
</xsl:stylesheet>

<!-- ################################ need to re evaluate  ########################### -->
<!-- <xsl:stylesheet xmlns:xsl="http:// www.w3.org/ 1999/ XSL/ Transform" version="1.0">
    <xsl:template match="/ ">
        <Persons>
            <xsl:apply-templates select="/ Persons/ Person"
            />
        </Persons>
    </xsl:template>
    <xsl:template match="Person">
        <xsl:copy>
            <xsl:attribute name="FirstName">
                <xsl:value-of select="FirstName" />
            </xsl:attribute>
            <xsl:attribute name="LastName">
                <xsl:value-of select="LastName" />
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet> -->