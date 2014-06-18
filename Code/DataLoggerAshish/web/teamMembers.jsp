<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>About The Project</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="sty.css" media="screen" />
<script type="text/javascript" src="tree.js"></script>
<link rel="stylesheet" type="text/css" href="tree.css" />
<script type="text/javascript" src="main.js"></script>
</head>
<body>

<div id="wrap">

<div id="top"></div>
<div id="header">
    <img align="left" src="images/4b.gif" height="90" width="120"/>
<div class="logo">
 <h1>Data Logger and Analytics</h1>
    <h3>CS684: Course Project</h3>
    <h5>Indian Institute of Technology, Bombay</h5></div>

</div>

<div id="menu">
<ul>
                        <li><a href="index.jsp">Home</a></li>
			<li><a href="about.jsp">About Project</a></li>
                        <li><a href="feedback.jsp">Feedback</a></li>
			<li><a href="teamMembers.jsp">Team Members</a></li>
			<li><a href="http://www.iitb.ac.in">IITB</a></li>
                        <li><a href="index.jsp">Logout</a></li>
</ul>
</div>
<div id="content">

<div class="right">
                <noscript>
                <ul><strong><u>Javascript is not enabled on your browser. For better functionality, please enable it before you fill the information.</u></strong></ul>
                </noscript>

<h2><a href="#">Team Members</a></h2>
<table border="1" width="600" cellspacing="1"cellpadding="1">
<tr>
<td height="50" width="50"><font size="4" color="DarkCyan ">NAME</font></td>
<td height="50" width="50"><font size="4" color="DarkCyan ">ROLL NO</font> </td>
<td height="50" width="150"><font size="4" color="DarkCyan ">EMAIL ID</font> </td>
</tr>
<tr>
<td height="30" width="50">Ashish Busi  </td>
<td height="30" width="50">10D170012 </td>
<td height="30" width="150">ashishbusi@gmail.com </td>
</tr>
<tr>
<td height="30" width="50">Alefiya Lightwala </td>
<td height="30" width="50">123050088 </td>
<td height="30" width="150"> alefiya.lightwala90@gmail.com </td>
</tr>
<tr>
<td height="30" width="50">Girraj Jaiswal </td>
<td height="30" width="50">100050030 </td>
<td height="30" width="150">girrajjayaswal@gmail.com </td>
</tr>
<tr>
<td height="30" width="50">Venkatesh Amgoth</td>
<td height="30" width="50">100050081 </td>
<td height="30" width="150">venkatesh.amgoth@gmail.com </td>
</tr>
</table>
<br>
</div>

<div class="left">

<h2>Features Monitored : </h2><br>

<ul id="treemenu1" class="treeview">

   <li><a href='#'>Temperature</a><ul><li><a href="temperature_details.jsp"><br>Description</a></li></ul>
   <br> <li><a href='#'>Humidity</a><ul><li><a href="humidity_details.jsp"><br>Description</a></li></ul>
   <br><li><a href='#'>Pressure</a><ul><li><a href="pressure_details.jsp"><br>Description</a></li></ul>
   <br><li><a href='#'>Luminosity</a><ul><li><a href="luminosity_details.jsp"><br>Description</a></li></ul>     
</ul>

    <script type="text/javascript">
//ddtreemenu.createTree(treeid, enablepersist, opt_persist_in_days (default is 1))
ddtreemenu.createTree("treemenu1", true)

</script>


</div>
<div style="clear: both;"></div>
</div>
<div id="footer">
    
</div>
</body>
</html>
