<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
    <body>
        
        <xsl:for-each select="Car/Cars">
        <b>
            Brand
        </b>
        <span><xsl:value-of select="Brand" /></span><br/>

        <b>
            Model
        </b>
        <span><xsl:value-of select="Model" /></span><br/>

        <b>
            Number
        </b>
        <span><xsl:value-of select="Number" /></span><br/>

        <b>
            Description
        </b>
        <span><xsl:value-of select="Description" /></span><br/>

        <b>
            Reconditioned
        </b>
        <span><xsl:value-of select="Car/@Reconditioned" /></span><br/>
    </xsl:for-each>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>