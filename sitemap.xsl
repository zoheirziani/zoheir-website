<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <title>zoheir.xyz HTML Site Map</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
                <style>
                    body {background-color: #eee; margin:0;font-family: "Roboto", "Helvetica", "Arial", sans-serif;max-width:1000px; margin:auto;}
                    header {background-color: #b1d1e8;font-size: 16px;padding-bottom: 40px;padding-top:10px;}
                    h1 {font-size: 24px;margin: 5px 30px 15px 30px;border-radius: 6px;border-bottom-right-radius: 6px;background-color: #f3f3f3;color: #666;box-shadow: 0 10px 20px -12px rgba(0, 0, 0, 0.42), 0 3px 20px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);padding: 10px 0;text-align: center;z-index: 1;}
                    div {margin: auto;padding: 10px; max-width: 800px; color: #666;font-size:1.1em;display:flex;justify-content:space-between;flex-wrap:wrap;}
                    main {overflow:scroll;position: relative;border-radius: 6px;box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);background: #f3f3f3;margin: -20px 30px 0px 30px;padding: 20px;}
                    a:link,	a:visited {color: #0180AF;text-decoration: underline;}
                    li:hover {background: #ddd;}
                    ul {width:100%;margin: 0px;padding: 0px;list-style: none;}
                    li {margin: 0px;border-bottom: #ddd 1px solid;padding: 10px;}
                    li:first-of-type{background: #ddd;padding: 10px;margin: 5px 0px;}
                    footer {padding: 10px;text-align: center;color: #666;}
                </style>
            </head>
            <body>
                <header>
                    <h1>zoheir.xyz Site Map</h1>
                    <div> 
                        <span>Total pages:  <xsl:value-of select="count(s:urlset/s:url)"/></span>
                        <span>Last updated: <xsl:value-of select="s:urlset/s:url/s:lastmod"/></span>
                    </div>
                </header>
                <main>
                    <ul>
                        <xsl:for-each select="s:urlset/s:url">
                            <li>
                                <a href="{s:loc}" title="{s:loc}">
                                    <xsl:value-of select="s:loc"/>
                                </a>
                            </li>
                        </xsl:for-each>
                    </ul>                
                </main>
                <footer>
                    Copyright &#169; <strong>Zoheir Ziani</strong>
                </footer>                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>