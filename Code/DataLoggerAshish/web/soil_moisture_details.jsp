<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Soil Moisture Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="sty.css" media="screen" />
<script type="text/javascript" src="tree.js"></script>
<script type="text/javascript" src="main.js"></script>
<link rel="stylesheet" type="text/css" href="tree.css" />
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>

<div id="wrap">

<div id="top"></div>
<div id="header">
    <img align="left" src="images/4a.jpg" height="90" width="120"/>
<div class="logo">
     <h1>Data Logger and Analytics</h1>
    <h3>CS684: Course Project</h3>
    <h5>Indian Institute of Technology, Bombay</h5></div>
</div>

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

<div id="stylized" class="myform">
         <h3>View Soil Moisture Details</h3>
             <p>
                 <b>Choose the fields using which you want to view</b>
             </p>   
                
             <noscript> 
                  <ul><strong><u>Javascript is not enabled on your browser. For better functionality, please enable it before you fill the information.</u></strong></ul>
             </noscript>   
                 
                
           <form name="viewSoilMoistureDetailsForm" method="post" action="new_soil_moisture.jsp" onsubmit="return validateviewstuForm();" >                 
              
               <div align="center">
               <div align="left">     
               
                                  
           <label><span>Choose soil moisture properties:</span>
           <select name="sel" multiple="true" >
                   <option value="soilMoisture">Soil Moisture</option>
                   
               </select>
               </label>
               
</div>
               
     <div >     
               
         <h5 id="selError">Select at least one property to search.</h5>
               
</div>
</div>         
               
               
               
               
 <div class="spacer"></div>
  <div class="spacer"></div>
   <div class="spacer"></div>
			<div  class="controls" align="center">
                        <button type="submit" name="view" value="view">View</button>
			<button type="reset" name="clear" value="clear" onclick="resetStdView();">Clear</button>
					
                        </div>
                       </form>
        </div>  




</div>








<div class="left">

<h2>Features Monitored : </h2><br>

<ul id="treemenu1" class="treeview">

  <li><a href='#'>Temperature</a><ul><li><a href="temperature_details.jsp"><br>Get Result</a></li></ul>
   <br> <li><a href='#'>Humidity</a><ul><li><a href="humidity_details.jsp"><br>Get Result</a></li></ul>
   <br><li><a href='#'>Pressure</a><ul><li><a href="pressure_details.jsp"><br>Get Result</a></li></ul>
   <br><li><a href='#'>Luminosity</a><ul><li><a href="luminosity_details.jsp"><br>Get Result</a></li></ul>     
 
</ul>

    <script type="text/javascript">
//ddtreemenu.createTree(treeid, enablepersist, opt_persist_in_days (default is 1))
ddtreemenu.createTree("treemenu1", true)


</script>


</div>
<div style="clear: both;"></div>
</div>


</body>
</html>
