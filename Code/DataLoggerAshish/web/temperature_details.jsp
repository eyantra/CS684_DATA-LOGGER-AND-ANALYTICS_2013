<%@page import="tease.bean.DataLog" %>
<%@page import="tease.dao.DataLogDAO" %>

<%! String s,s1;
int x,j,i;
float currV;
DataLog dl;
DataLogDAO dla;
float newt;
%>

<%
//Connection con=lnk3.getConnection();
dl= new DataLog(); 
dla=new DataLogDAO();
dl=dla.getDataLogTemperature();
//td1=tda1.getStudent();
//x=request.getParameterId("fname1");
%>
<!DOCTYPE html PUBLIC "-//W3C//Dsd XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/Dsd/xhtml1-strict.dsd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>TEASE@IITB</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="sty.css" media="screen" />
<script type="text/javascript" src="tree.js"></script>
<script type="text/javascript" src="main.js"></script>
<link rel="stylesheet" type="text/css" href="tree.css" />
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<head>
<style>
p.pos_fixed
{
position:fixed;
top:325px;
right:555px;
box-shadow: 10px 10px 5px #888888;
}    
div.ex
{
position:fixed;
top:220px;
right:555px;    
width:220px;
padding:10px;
border:3px solid gray;
background-color:silver;
margin:0px;
}
</style>
</head>     
<body>

<div id="wrap">



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<div id="top"></div>
<div id="header">
    <img align="left" src="images/4a.jpg" height="90" width="120"/>
<div class="logo">
    <h1>Data Logger and Analytics</h1>
    <h3>CS684: Course Project</h3>
    <h5>Indian Institute of Technology, Bombay</h5></div>


</div>

<div id="menu">
<ul>
                       
                        <li><a href="Admin_Home.jsp">Home</a></li>
			<li><a href="about.jsp">About Us</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
			<li><a href="feedback.jsp">Feed Back</a></li>
			<li><a href="faq.jsp">FAQ's</a></li>
			<li><a href="http://www.iitb.ac.in">IITB</a></li>
                        <li><a href="index.jsp">Logout</a></li>
</ul>
</div>

<div id="content">

<div class="right">

<div id="stylized" class="myform">
    

    <p class="pos_fixed"><a href="graph_temperature.jpg"><img src="graph_temperature.jpg" width="350" height="250" /></a></p> 
    <h3>Temperature Reading</h3><br>
             <noscript> 
                  <ul><strong><u>Javascript is not enabled on your browser. For better functionality, please enable it before you fill the information.</u></strong></ul>
             </noscript>
        
 <table id="view" border="1" >
                    <thead>
    <tr>
        <th> Serial No </th>
        <th> Timestamp </th>
        <th> Temperature </th>
        
        
    </tr>
</thead>
<tbody>
   
 <%      while(dl!=null) {               %> <tr> 
                        
                          <td><%=dl.getSerial_no()%> </td>
                          <td><%=dl.getTime_stamp()%> </td>
                          <% newt=dl.getTemperature(); %>
                          <td><%=dl.getTemperature()%> </td>
                          
                          <% dl=dla.getDataLogTemperature(); 
     %></tr>  <%               }%> 
            
            
    
    

</tbody>
                </table>
    <div class="ex">
        <h3>Current Temperature</h3>
       <%=newt%>
    
    </div><br> 
           
                       
        </div>  




</div>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">








<div class="left">

<h2>Features Monitored : </h2><br>

<ul id="treemenu1" class="treeview">

   <li><a href='#'>Temperature</a><ul><li><a href="temperature_details.jsp"><br>Today</a></li><li><a href="temperature_details.jsp">Last Week</a></li><li><a href="temperature_details.jsp">Last Month</a></li></ul>
   <br> <li><a href='#'>Humidity</a><ul><li><a href="humidity_details.jsp"><br>Today</a></li><li><a href="humidity_details.jsp">Last Week</a></li><li><a href="humidity_details.jsp">Last Month</a></li></ul>
   <br><li><a href='#'>Pressure</a><ul><li><a href="pressure_details.jsp"><br>Today</a></li><li><a href="pressure_details.jsp">Last Week</a></li><li><a href="pressure_details.jsp">Last Month</a></li></ul>
   <br><li><a href='#'>Luminosity</a><ul><li><a href="luminosity_details.jsp"><br>Today</a></li><li><a href="luminosity_details.jsp">Last Week</a></li><li><a href="luminosity_details.jsp">Last Month</a></li></ul>     
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
