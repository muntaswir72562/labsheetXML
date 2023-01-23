<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Module Name</th>
                        <th>credit</th>
                        <th>level</th>
                    </tr>
                    <xsl:for-each select="Modules/module">

                        <tr>
                            <td colspan="3">
                                <xsl:apply-templates select="@code" />
                                <!-- <xsl:apply-templates select="studentemail" /> -->
                            </td>

                        </tr>
                         <tr>
                            <td>
                                <xsl:apply-templates select="name" />
                            </td>
                            <td>
                                <xsl:apply-templates select="credit" />
                            </td>
                            <td>
                                <xsl:apply-templates select="level" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="@code">
        <span style="background-color: grey">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <xsl:template match="name">
        <span style="color: blue">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <xsl:template match="credit">
        <span style="color: blue">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <xsl:template match="level">
        <span style="color: blue">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

</xsl:stylesheet>