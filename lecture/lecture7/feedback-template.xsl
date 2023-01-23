<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Feedback provided</h2>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="module">
        <p>
            <xsl:apply-templates select="studentemail" />
            <xsl:apply-templates select="modulename" />
        </p>
    </xsl:template>
    <xsl:template match="studentemail"> 
        Student Email: 
        <span style="color:#ff0000">
            <xsl:value-of select="." />
        </span> <br />
    </xsl:template>
    <xsl:template match="modulename"> Module Name: <span style="color:#00ff00">
            <xsl:value-of select="." />
        </span> <br />
    </xsl:template>
</xsl:stylesheet>
