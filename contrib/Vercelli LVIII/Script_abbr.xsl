<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <!-- TEMPLATE PER L'INSERIMENTO AUTOMATICO DI CARATTERI IN <am>
        A PARTIRE DALLO SCIOGLIMENTO INSERITO IN <ex> NEL CODEX LVIII -->
    
    <!-- Identity template to copy all elements and attributes unchanged -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- XSLT Template to copy anything, priority="-1" NON USARE!
    <xsl:template match="@*|node()" priority="-1">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>-->
    
    <!--Template to match <am> elements inside <abbr> and replace 'u' > 'um' with <g ref="#umacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'u'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'um')]]">
        <am><g ref="#umacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'u' > 'utem' with <g ref="#umacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'u'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'utem')]]">
        <am><g ref="#umacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'a' > 'am' with <g ref="#amacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'a'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'am')]]">
        <am><g ref="#amacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'i' > 'im' with <g ref="#imacr"/>
    We should consider also the <am><g ref="#inodot"/></am>-->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'i'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'im')]]">
        <am><g ref="#imacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'o' > 'om' with <g ref="#omacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'o'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'om')]]">
        <am><g ref="#omacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'e' > 'em' with <g ref="#emacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'e'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'em')]]">
        <am><g ref="#emacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'e' > 'est' (IN <ex>) with <g ref="#emacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'e'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'est')]]">
        <am><g ref="#emacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'e' > 'est' (IN <expan>) with <g ref="#emacr"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'e'][ancestor::tei:choice/tei:expan[contains(., 'est')]]">
        <am><g ref="#emacr"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'ee' > 'esse' (IN <ex>) with e<g ref="#ebar"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'ee'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'esse')]]">
        <am>e<g ref="#ebar"/></am>
    </xsl:template>
    
    <!--Template to match <am> elements inside <abbr> and replace 'ee' > 'esse' (IN <expan>) with e<g ref="#ebar"/> -->
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'ee'][ancestor::tei:choice/tei:expan[contains(., 'esse')]]">
        <am>e<g ref="#ebar"/></am>
    </xsl:template>
    
    <!-- Template to match <am> elements inside <abbr> and replace 'e' with <g ref="#???????"/>
        INDIVIDUARE IL CARATTERE CHE VOGLIAMO IN <ex>
    <xsl:template match="tei:text//tei:p//tei:w//tei:choice/tei:abbr/tei:am[. = 'e'][ancestor::tei:choice/tei:expan/tei:ex[contains(., 'ae')]]">
        <am><g ref="#???????"/></am>
    </xsl:template>-->
    
</xsl:stylesheet>