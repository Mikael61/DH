<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output 
        doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    />
    <xsl:template match="/">
        <html>
            <head>
                <title>Brev 
                    <xsl:value-of select="//brevhuvud"/>
                </title>
                <style type="text/css">
                    body {width : 75%}
                    .huvud { text-align : right ;
                    font-style : italic ;
                    font-size : 0.8em }
                    .poesi {
                    border : 1px solid maroon ;
                    margin-left : 3em
                    }
                    .salut {
                    font-style : italic 
                    }
                    .sig {
                    text-align : right
                    }
                </style>
            </head>
            <body>
                <h1>
                 <xsl:value-of select="//brevhuvud"/>
                </h1>
                <p>
                    <xsl:apply-templates/>
                </p>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="brevhuvud">
        <p class="huvud"><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    
    <xsl:template match="stycke">
        <p><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match="poesi">
        <p class="poesi"><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match="versrad">
        <xsl:apply-templates></xsl:apply-templates><br/>
    </xsl:template>
    <xsl:template match="avslutningsfras">
        <p class="end"><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match="signatur">
        <p class="sig"><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match="salutering">
        <p class="salut"><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match="sidstart">
        <p><hr/> Page <xsl:value-of select="@sidnummer"/></p>
    </xsl:template>
    
</xsl:stylesheet>