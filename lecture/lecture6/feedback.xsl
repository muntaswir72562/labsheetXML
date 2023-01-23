<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Feedback provided</h2>
                <table border="1">
                    <tr
                        bgcolor="#9acd32">
                        <th>Student Email</th>
                        <th>Module
                            Name</th>
                    </tr>
                    <xsl:for-each select="feedback/module">
                        <xsl:sort select="modulename" />
                            <tr>
                            <td>
                                <xsl:value-of
                                    select="studentemail" />
                            </td>
                            <td>
                                <xsl:value-of select="modulename" />
                            </td>
                        </tr>

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>