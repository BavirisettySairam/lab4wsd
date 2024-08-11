<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Hospital Patient Report</title>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h1>Patient Report</h1>
                <table>
                    <!-- Table Headers -->
                    <tr>
                        <th>Patient ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Blood Group</th>
                        <th>Admission Date</th>
                        <th>Disease</th>
                        <th>Room Number</th>
                    </tr>

                    <!-- Iterate through each patient and create a row -->
                    <xsl:for-each select="healthcare/hospital/patient">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="gender"/></td>
                            <td><xsl:value-of select="bloodGroup"/></td>
                            <td><xsl:value-of select="admissionDate"/></td>
                            <td><xsl:value-of select="disease"/></td>
                            <td><xsl:value-of select="roomNumber"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
