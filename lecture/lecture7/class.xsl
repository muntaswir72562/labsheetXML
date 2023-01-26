<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    

<xsl:template match="/">
<html>
    <body>
        <xsl:apply-templates select="/class/student"/>
    </body>
</html>
    
    </xsl:template>

    <xsl:template match="student">
        
           <p>
            <xsl:value-of select="@id"/>-<xsl:value-of select="."/> 
           </p>
        
    </xsl:template>
    
    </xsl:stylesheet>

    