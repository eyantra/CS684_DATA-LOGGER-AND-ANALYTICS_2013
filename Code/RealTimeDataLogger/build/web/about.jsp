<%@page import="tease.bean.DataLog" %>
<%@page import="tease.dao.DataLogDAO" %>

<%! String s,s1;
int x,j,i;
DataLog dl;
DataLogDAO dla;
float newt;
%>

<%
//Connection con=lnk3.getConnection();
dl= new DataLog(); 
dla=new DataLogDAO();
dl=dla.getDataLogHumidity();
//td1=tda1.getStudent();
//x=request.getParameterId("fname1");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Professional Web2</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<!--[if lte IE 8]><style type="text/css">@import url("styles/ie.css");</style><![endif]-->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="scripts/jquery.defaultvalue.js"></script>
<script type="text/javascript">
jQuery(function ($) {
    $("#name, #email, #message").defaultvalue("Name", "Email", "Message");
});
</script>
<!-- Set-up Homepage Slider Here -->
<script type="text/javascript" src="scripts/jquery.cycle.lite.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("ul#imageslides").cycle({
        fx: 'fade',
        pause: 1,
        prev: '#prev',
        next: '#next'
    });
	$("#slider").hover(function() {
    	$("ul#slidernav").fadeIn();
  	},
  		function() {
    	$("ul#slidernav").fadeOut();
  	});
});
</script>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="wrapper col1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">DataLogger and Analytics</a></h1><br>
        <li ><a href="Admin_Home.jsp"><span>Home</span></a></li>
        <li class="active"><a href="about.jsp"><span>About Project</span></a></li>
        <li><a href="GreenHouseParameters.jsp"><span>GreenHouse Parameters</span></a></li>        
        <li><a href="teamMembers.jsp"><span>Team Member</span></a></li>
        <li><a href="http://www.iitb.ac.in"><span>IITB</span></a></li>
        <li class="last"><a href="index.jsp"><span>Logout</span></a></li>
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <!-- ## Homepage Specific ## -->
    
        <h2><a href="#">Environmental Parameters</a></h2>
<br>
     
 <!--     <div class="center">
    <a href="#" ><img  src="images/placeholders/plc.jpg" height="300" width="1050" alt="" /></a>
      </div>
    
    <!-- / ### -->
  </div>
</div>
<div class="wrapper col3">
  <div id="container">
    <!-- ## Homepage Specific ## -->
    <div id="featured">
      <div class="bg_top">
        <div class="bg_bot clear">
          <div class="holder">
            <p class="center"><img src="images/placeholders/sun.jpg" width="110" height="110" alt="" /></p>
            <h2 class="center">Temperature</h2>
            <% newt=dl.getTemperature(); %>
            <p class="center"><input id="dnameId" type="text" name="dnameId" value="<%=newt%>" size="4"/></p>
                   
            <p class="readmore"><a href="extensions.jsp"><span>More</span></a></p>
          </div>
          <div class="holder">
            <p class="center"><img src="images/placeholders/pressure.jpg" width="110" height="110" alt="" /></p>
            <h2 class="center">Pressure</h2><% newt=dl.getPressure(); %> 
            <p class="center"><input id="dnameId" type="text" name="dnameId" value="<%=newt%>" size="4"/></p>                                      
                                     
            <p class="readmore"><a href="extensions.jsp"><span>More</span></a></p>
          </div>
          <div class="holder">
            <p class="center"><img src="images/placeholders/humid.jpg" width="110" height="110" alt="" /></p>
            <h2 class="center">Humidity</h2><% newt=dl.getHumidity(); %>
            <p class="center"><input id="dnameId" type="text" name="dnameId" value="<%=newt%>" size="4"/></p>      
    
            <p class="readmore"><a href="extensions.jsp"><span>More</span></a></p>
          </div>
          <div class="holder last">
            <p class="center"><img src="images/placeholders/lum.jpg" width="110" height="110" alt="" /></p>
            <h2 class="center">Luminosity</h2><% newt=dl.getLuminosity(); %>
            <p class="center"><input id="dnameId" type="text" name="dnameId" value="<%=newt%>" size="4"/></p>
                                     
            <p class="readmore"><a href="extensions.jsp"><span>More</span></a></p>
          </div>
        </div>
      </div>
    </div>
    <!-- / ### -->
    <div id="hpagesplitter"></div>
    <!-- / ### -->
    <div id="companyinfo">
      <div class="bg_top">
        <div class="bg_bot clear">
          <div class="fl_left">
            <h2 class="center">Guided By</h2>
            
            <ul id="teammembers" class="clear">
            <li><a href="#" class="teammember"><img src="images/placeholders/ka1.jpg" width="110" height="110" alt="" /> Prof. Kavi Arya</a><br />
                
              </li>
              <!-- Member 2 -->
              <li class="last"><a href="#" class="teammember"><img src="images/placeholders/kr1.jpg" width="110" height="110" alt="" />Prof. Krithi Ramamrithm</a><br />
                
              </li>
            </ul>
            
          </div>
          <div class="fl_right">
            <h2>Our Team</h2>
            
            <ul id="teammembers" class="clear">
              <!-- Member 1 -->
              <li><a href="#" class="teammember"><img src="images/placeholders/female.png" alt="" /> Alefiya Lightwala</a><br />
                
              </li>
              <!-- Member 2 -->
              <li><a href="#" class="teammember"><img src="images/placeholders/male.png" alt="" /> Ashish Busi</a><br />
                
              </li>
              <!-- Member 3 -->
              <li><a href="#" class="teammember"><img src="images/placeholders/male.png" alt="" /> Girraj Jayaswal</a><br />
               
              </li>
              <!-- Member 4 -->
              <li class="last"><a href="#" class="teammember"><img src="images/placeholders/male.png" alt="" /> Venkatesh Amgoth</a><br />
                
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- / ### -->
  </div>
</div>
<div class="wrapper col4">
  <div id="socialbar" class="clear">
    <div class="fl_left">
      <p>Developed as a Module of Embedded Systems Project at IITB</p>
    </div>
    
  </div>
</div><!--
<div class="wrapper col5">
  <div id="footer" class="clear">
    <div class="box">
      <div class="title">
        <h2>Let Us Talk!</h2>
        <p>Use the form below to drop us a message.</p>
      </div>
      <form method="post" action="#">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="" />
        <label for="email">Email:</label>
        <input type="text" name="email" id="email" value="" />
        <label for="message">Message:</label>
        <textarea name="message" id="message" cols="45" rows="10"></textarea>
        <button type="submit" value="submit"><span>Submit It !</span></button>
      </form>
    </div>
    <div class="box">
      <div class="title">
        <h2>Testimonials</h2>
        <p>Some comments from our clients</p>
      </div>
      <ul>
        <li><strong>Mr. John Smith</strong><br />
          Aug 17th 2010<br />
          <a href="#">Tricesjusto convallis nascelerisuspendrerisus</a></li>
        <li><strong>Mr. John Smith</strong><br />
          Aug 17th 2010<br />
          <a href="#">Tricesjusto convallis nascelerisuspendrerisus</a></li>
        <li class="last"><strong>Mr. John Smith</strong><br />
          Aug 17th 2010<br />
          <a href="#">Tricesjusto convallis nascelerisuspendrerisus</a></li>
      </ul>
    </div>
    <div class="box last">
      <div class="title">
        <h2>Latest Blog Posts</h2>
        <p>Here are the latest posts from our blog</p>
      </div>
      <ul>
        <li><strong><a href="#">Blog Post Title Here</a></strong><br />
          01.5.2010<br />
          Tricesjusto convallis nascelerisuspendrerisus temper vivamus orci urnar leo temporta ut elit.</li>
        <li><strong><a href="#">Blog Post Title Here</a></strong><br />
          01.5.2010<br />
          Tricesjusto convallis nascelerisuspendrerisus temper vivamus orci urnar leo temporta ut elit.</li>
      </ul>
      <p class="readmore"><a href="#"><span>Read More</span></a></p>
    </div>
  </div>
</div>-->
<div class="wrapper col6">
  <div id="copyright" class="clear">
    
  </div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div></body>
</html>
