<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="Flits" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="3">Will Flight Company</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Passenger</th>
                    <th>Departing Date</th>
                    <th>Class</th>
                    <th>Destination</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/booking/section">
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="entree">
                        <tr id="{position()}">                          
                            <td align="center">
                                <input name="item0" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="Passenger" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="Departing Date" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="Class" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="Destination" />
                            </td>                            
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>