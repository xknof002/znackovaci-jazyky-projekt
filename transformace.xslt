<?xml version="1.0" encoding="UTF-8"?>
<!--https://github.com/xknof002/znackovaci-jazyky-projekt/-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Graphics presets comparison</title>
                <style>
                    table {
                        font-family: arial, sans-serif;
                        border-collapse: collapse;
                        width: 100%;
                    }

                    td, th {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }

                    tr:nth-child(even) {
                        background-color: #dddddd;
                    }
                </style>
            </head>
            <body>
                <h1>Graphics presets comparison</h1>
                <table border="0">
                    <tr bgcolor="#cc7402">
                        <th>Preset</th>
                        <th>Texture quality</th>
                        <th>Anisotropic filtering</th>
                        <th>Anti-aliasing</th>
                        <th>Ambient occlusion</th>
                        <th>Post process quality</th>
                        <th>Lightning quality</th>
                        <th>Shadows quality</th>
                        <th>Effects quality</th>
                        <th>Mesh quality</th>
                        <th>Shader quality</th>
                        <th>Terrain quality</th>
                        <th>Vegetation quality</th>
                    </tr>
                    <xsl:for-each select="game-settings/graphics">
                    <tr>
                        <th bgcolor="#cc7402"><xsl:value-of select="@preset"/></th>
                        <td><xsl:value-of select="textures/texture-quality"/></td>
                        <td><xsl:value-of select="textures/anisotropic-filtering"/></td>
                        <td><xsl:value-of select="anti-aliasing"/></td>
                        <td><xsl:value-of select="ambient-occlusion"/></td>
                        <td><xsl:value-of select="post-process-quality"/></td>
                        <td><xsl:value-of select="lightning-quality"/></td>
                        <td><xsl:value-of select="shadows-quality"/></td>
                        <td><xsl:value-of select="effects-quality"/></td>
                        <td><xsl:value-of select="mesh-quality"/></td>
                        <td><xsl:value-of select="shader-quality"/></td>
                        <td><xsl:value-of select="terrain-quality"/></td>
                        <td><xsl:value-of select="vegetation-quality"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>