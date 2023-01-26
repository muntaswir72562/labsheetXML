<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        
        <table border="1">
            <tr>
                <th>Photo</th>
                <th>ISBN</th>
                <th>Title</th>
                <th>Author</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>price</th>
            </tr>
            <xsl:for-each select="books/book">
            <xsl:if test="year &gt; 2000">
                <tr>
                    <td><xsl:value-of select="photo"/></td>
                    <td><xsl:value-of select="isbn"/></td>
                    <td><xsl:value-of select="title"/></td>
                    <td><xsl:value-of select="author/firstname"/>,<xsl:value-of select="author/lastname"/></td>
                    <td><xsl:value-of select="publisher"/></td>
                    <td><xsl:value-of select="year"/></td>
                    <td><xsl:value-of select="price"/></td>
                </tr>
                </xsl:if>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
