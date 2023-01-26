<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Question 1</h1>
                <table border="1">
                    <tr>
                        <th>title</th>
                        <th>price</th>
                    </tr>
                    <xsl:for-each select="bookstore/book">
                        <tr>
                            <td>
                                <xsl:value-of select="title" />
                            </td>
                            <td>
                                <xsl:value-of
                                    select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <br />
                <h1>Question 2</h1>
                <table border="1">
                    <tr>
                        <th>title</th>
                        <th>price</th>
                    </tr>
                    <xsl:for-each select="bookstore/book">
                        <xsl:if test="title/@lang='fr'">
                            <tr>
                                <td>
                                    <xsl:value-of select="title" />
                                </td>
                                <td>
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <h1>Question 3</h1>
                <table border="1">
                    <tr>
                        <th>title</th>
                        <th>price</th>
                    </tr>
                    <xsl:for-each select="bookstore/book">
                        <xsl:if test="price &lt; 35">
                            <tr>
                                <td bgcolor="yellow">
                                    <xsl:value-of select="title" />
                                </td>
                                <td bgcolor="yellow">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>