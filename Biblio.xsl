<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblio</title>
            </head>
            <body>
                <h3 style="color:red ;text-align:center"><b>Liste des etudiants</b></h3>
                <xsl:for-each select="/biblio/etudiant">
                    <ui>
                        <li>Code : <xsl:value-of select="@code"></xsl:value-of></li>
                        <li>Nom : <xsl:value-of select="@nom"></xsl:value-of></li>
                        <li>Prenom : <xsl:value-of select="@prenom"></xsl:value-of></li>
                        <li>Age : <xsl:value-of select="@age"></xsl:value-of></li>                    
                    </ui>
                    <table border="1" bgcolor="gray" width="75%">
                      <tr>
                          <th style="color:red">ID</th><th style="color:red">TITRE</th><th style="color:red">DATEPRET</th><th style="color:red">RENDU</th>
                          <xsl:for-each select="livre">
                              <tr style="color:green ; background-color:lightgreen">
                                  <td><xsl:value-of select="@id"></xsl:value-of></td>
                                  <td><xsl:value-of select="@titre"></xsl:value-of></td>
                                  <td><xsl:value-of select="@DatePret"></xsl:value-of></td>
                                  <td><xsl:value-of select="@rendu"></xsl:value-of></td>
                              </tr>
                          </xsl:for-each>
                      </tr>
                    </table>
                    <p><b>Nombre des livres Emprenties : <xsl:value-of select="count(livre)"></xsl:value-of></b></p>
                    <p><b>Nombre des livres Non Emprenties : <xsl:value-of select="count(livre[@rendu='non'])"></xsl:value-of></b></p>
        
                 </xsl:for-each>
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>