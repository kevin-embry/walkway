<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Food</title>
    <link rel="stylesheet" href="food.css"/>
	<!--</meta>-->
</head>

<body>
<header>
    <img id="headerimg" src="images/header.jpg"/>
    <img id="header_right" src="images/header_grab.jpg"/>

</header>


<aside>
    <h2>MENU</h2>
    <nav id="nav_list">
        <ul>
            <li><a href="index.html">MAIN</a></li>
			<li><a href="history.html">HISTORY</a></li>
            <li><a href="photogallery.html">PHOTOS</a></li>
            <li><a href="walkwayevents.html">EVENTS</a></li>
            <li><a href="support.html">SUPPORT</a></li>
            <li><a href="weather.html">WEATHER</a></li>
        </ul>
        
        <h2>VENDORS</h2>
        <ul>
            <li><a href="walkway-1.xml">FOOD</a></li>
           
        </ul>
        
        <h2>VISITING THE WALKWAY</h2>
        <ul>
            <li><a href="directions.html">DIRECTIONS</a></li>
            <li><a href="#" onclick="getHours()">HOURS</a></li>
                       
        </ul>
    </nav>
</aside>
<main style="height: 900px; margin-left = 205px;">
    <div id="gallery">
            <h2 align="center">Food</h2>
    <table border="1" width = "250">
      <tr bgcolor="#3399ff">
        <th>Item</th>
        <th>Price</th>
		<th>Description</th>
      </tr>
      <xsl:for-each select="menu/food">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="price"/></td>
		  <td><xsl:value-of select="description"/></td>
        </tr>
      </xsl:for-each>
    </table>
<h2 align="center">Rentals</h2>
    <table border="1" width = "250">
      <tr bgcolor="#3399ff">
        <th>Item</th>
        <th>Price</th>
		<th>Description</th>
      </tr>
      <xsl:for-each select="menu/rental">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="price"/></td>
		  <td><xsl:value-of select="description"/></td>
        </tr>
      </xsl:for-each>
    </table>
<h2 align="center">Merchandise</h2>
    <table border="1" width = "250">
      <tr bgcolor="#3399ff">
        <th>Item</th>
        <th>Price</th>
		<th>Description</th>
      </tr>
      <xsl:for-each select="menu/merchandise">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="price"/></td>
		  <td><xsl:value-of select="description"/></td>
        </tr>
      </xsl:for-each>
    </table>
    </div>



</main>

<script>

    function getHours()
    {
        window.alert("Park Hours: Sunrise to Sunset.");
    }
</script>
</body>
<footer>
    <p>2015 Walkway Over The Hudson All Rights Reserved</p>
    <img src="images/small_logo.jpg" name="botlogo" width="135px" height="70px"/>
</footer>
</html>
</xsl:template>

</xsl:stylesheet> 