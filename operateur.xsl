<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Operateur</title>
            </head>
            <body>
                <h3 style="color:red ;text-align:center"><b>Liste des operateurs</b></h3>
                <xsl:for-each select="/operateur/client">
                    <ui>
                        
                        <li><b>Nom du Client  : <xsl:value-of select="@nom"></xsl:value-of></b></li>                 
                    </ui>
                    <table border="1" bgcolor="gray" width="75%">
                        <tr>
                            <th style="color:red">Num Abonnement</th><th style="color:red">Type</th><th style="color:red">Date Abonement</th><th style="color:red">Montant Total des facteurs</th>
                            <xsl:for-each select="abonnement">
                                <tr style="color:green ; background-color:lightgreen">
                                    <td><xsl:value-of select="@numero"></xsl:value-of></td>
                                    <td><xsl:value-of select="@type"></xsl:value-of></td>
                                    <td><xsl:value-of select="@dateAbo"></xsl:value-of></td>
                                    <td><xsl:for-each select="sum(facteur[@montant='oui'])"></xsl:for-each></td>
                                </tr>
                            </xsl:for-each>
                        </tr>
                    </table>
                    
                    
                </xsl:for-each>
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>