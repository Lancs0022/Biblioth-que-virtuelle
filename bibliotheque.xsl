<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- template principal selectionnant tous les données du document xml avec "/" -->
    <xsl:template match="/">
        <html>
        <head>
            <!-- Titre de la page sur l'onglet -->
            <title>Bibliothèque</title>
            <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <body>
            <header>
                <h1>Ma Bibliothèque</h1>
            </header>
            <div class="main-content">
                <!-- On crée une boucle pour selectionner 
                     tous les lecteurs présent dans lecteurs.xml-->
                <xsl:for-each select="bibliotheque/livre">
                    <div class="book">
                        <img>
                            <!-- On place sur la balise <img/> l'atribut src
                                 pour référencier le chemin d'un image -->
                            <xsl:attribute name="src">
                                <xsl:value-of select="urlImage"/>
                            </xsl:attribute>
                        </img>
                        <div class="book-info">
                            <div class="genre">
                                <xsl:value-of select="genre"/>
                            </div>
                            <h2>
                                <xsl:value-of select="nom"/>
                            </h2>
                            <div class="auteur">
                                <xsl:value-of select="auteur"/>
                            </div>
                            <div class="notation">
                                Note: <xsl:value-of select="notation"/>
                            </div>
                            <div class="synopsis">
                                <xsl:value-of select="synopsis"/>
                            </div>
                            <div class="datePublication">
                                Date de publication: <xsl:value-of select="datePublication"/>
                            </div>
                        </div>
                    </div>
                </xsl:for-each>
            </div>
            <footer>
                <a href="lecteurs.html">Retour à la liste des utilisateurs</a>
            </footer>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
