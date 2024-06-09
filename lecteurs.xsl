<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <!-- template selectionnant tous les données du document xml avec "/" -->
    <xsl:template match="/">
        <html>
        <head>
            <!-- Titre de la page sur l'onglet -->
            <title>Utilisateurs</title>
            <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <body>
            <header>
                <!-- Titre de la page -->
                <h1>Liste des Utilisateurs</h1>
            </header>
            <div class="main-content">
                <!-- On crée une boucle pour selectionner 
                     tous les lecteurs présent dans lecteurs.xml-->
                <xsl:for-each select="utilisateurs/lecteur">
                    <div class="user">
                        <img>
                            <!-- On place sur la balise <img/> l'atribut src
                                 pour référencier le chemin d'un image -->
                            <xsl:attribute name="src">
                                <xsl:value-of select="pdp"/>
                            </xsl:attribute>
                        </img>
                        <div class="user-info">
                            <h2 class="pseudo">
                                <xsl:value-of select="pseudo"/>
                            </h2>
                            <div class="dateInscription">
                                Date d'inscription: <xsl:value-of select="dateInscription"/>
                            </div>
                            <div class="livres-lus">
                                <!-- Chaque lecteur a 2 livres lus et on essaye
                                     de les afficher succéssivement avec un lien menant vers chaque livre -->
                                <xsl:for-each select="lus/livre">
                                    <div class="livre">
                                        <a>
                                            <!-- On place le nom de la page bibliothèque pour y retourner et l'id du livre -->
                                            <xsl:attribute name="href">
                                                <xsl:text>bibliotheque.html#</xsl:text>
                                                <xsl:value-of select="idLivre"/>
                                            </xsl:attribute>
                                            <strong><xsl:value-of select="nomLivre"/></strong>
                                        </a> - 
                                        <span class="commentaire">
                                            <xsl:value-of select="commentaire"/>
                                        </span>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </xsl:for-each>
            </div>
            <footer>
                <a href="bibliotheque.html">Retour à la bibliothèque</a>
            </footer>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>