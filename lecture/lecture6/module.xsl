<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:variable name="deptCredit" select="99" />
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
                        <xsl:sort select="level" />
                        <tr>
                            <td colspan="3" bgcolor="grey">
                                <xsl:value-of select="@code" />
                            </td>
                        </tr>
                            <tr>
                            <td>
                                <xsl:value-of
                                    select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="credit" />
                            </td>
                            <td>
                                <xsl:value-of select="level" />
                            </td>
                        </tr>

                    </xsl:for-each>
                    <tr>
                        <td colspan="3">Departmental credits needed: <xsl:value-of
                                select="$deptCredit" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">Percentage cleared: <strong>

                                <xsl:value-of
                                    select="format-number(sum(Modules/module/credit/text()) div $deptCredit,'##.##%')" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>