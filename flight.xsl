<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <link href="/css/bootstrap.min.css" rel="stylesheet"></link>
                <link href="/css/flight.css" rel="stylesheet"></link>
            </head>
            <div class="container">               
                    <div class="card">
                        <div class="card-header">
                            Welcome to William's Airline
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Booked Flights</h5>
                            <table id="flights" class="table table-hover table-bordered">
                                <thead>                
                                    <tr>
                                        <th scope="col">Passenger</th>
                                        <th scope="col">Departing Date</th>
                                        <th scope="col">Class</th>
                                        <th scope="col">Destination</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <xsl:for-each select="/booking/section">
                                        <tr>
                                            <th scope="col" colspan="7">
                                                <xsl:value-of select="@name"/>
                                            </th>
                                        </tr>
                                        <xsl:for-each select="entree">
                                            <tr id="{position()}">                    
                                                <td>
                                                    <xsl:value-of select="passenger"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="departingDate"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="class"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="destination"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="price"/>
                                                </td>
                                                <td class="text-right">
                                                    <button id="delete" class="btn btn-danger badge-pill" onClick="delete">Delete</button>
                                                </td>                                                           
                                            </tr>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                 </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                 <!-- Bootstrap core JavaScript -->
                <!-- Bootstrap core JavaScript -->
    <script src="views/js/jquery.min.js"></script>
    <script src="views/js/bootstrap.bundle.min.js"></script>
    <script src="views/js/table.js"></script>
    <script src="views/js/PaddysCafe.js"></script>
                
            </html>
    </xsl:template>
</xsl:stylesheet>