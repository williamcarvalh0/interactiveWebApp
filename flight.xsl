<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="flights" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="3">William Flight Company</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Passenger</th>
                    <th>Departing Date</th>
                    <th>Class</th>
                    <th>Destination</th>
                    <th>Price €</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/booking/section">
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="@name"/>
                        </td>
                    </tr>
                    <xsl:for-each select="entree">
                        <tr id="{position()}">                          
                            <td align="center">
                                <input name="item0" type="checkbox"/>
                            </td>
                            <td>
                                <xsl:value-of select="passenger"/>
                            </td>
                            <td align="center">
                                <xsl:value-of select="departingDate"/>
                            </td>
                            <td align="center">
                                <xsl:value-of select="class"/>
                            </td>
                            <td align="center">
                                <xsl:value-of select="destination"/>
                            </td>  
                            <td align="center">
                                <xsl:value-of select="price"/>
                            </td>                           
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>