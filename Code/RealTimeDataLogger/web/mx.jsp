<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN " "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title> TEASE Home</title>
<base href="file:///home/mayank/Desktop/intern/files/" >
<link href="index.css" rel="stylesheet" type="text/css" >
<script type="text/javascript">
function validateForm()
{
	var x=document.forms["myform"]["name"].value
	var y=document.forms["myform"]["password"].value
	var z=document.forms["myform"]["designation"].value
	if (x==null || x=="")
	  {
		  alert("Please fill the name");
		  return false;
	  }
	if (y==null || y=="")
	  {
		alert("Please type the password ");
		return false;
	  }
	if(z== -1)
	  {
		alert("Please select either student ,teacher or admin ");
		return false ;
	}
	
}
</script>
 

</head>
<body>
 
<div id="outer">
	 
	<div id="header">
<div style= "background-color:white">
<img src="images/4a.jpg" alt="IIT-B logo" height=105px width =105	 />
</div>	
	</div>

	<div id="nav">
		<ul>
			<li><a href="main.jsp">	Home </a></li>
			<li><a href="index.html">	Information</a></li>
			<li><a href="index.html">	Syllabus</a></li>
			<li><a href="index.html">Exam Centres</a></li>
			<li><a href="index.html">How to apply</a></li>
			<li><a href="index.html">	     Previous Year Papers</a></li>
			<li><a href="http://www.iitb.ac.in">IITB</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="mainbody">
			<h1>Home</h1> <hr/>
			<p>
				Current paper based testing for objective testing is quite time-consuming. Even All India Exams like JEE and AIEEE take 1 and half months for evaluation. Tease attempts to make this procedure quick by using simple technologies like Bluetooth and Java applications on java enabled mobile phones.
				<br><br> The various objecives are: <br>
				<ul type="square" >
					<li> Streamline the asessment of students so that the results could be published within minutes of the end of the testing.<br>
					<li>Support analysis of a student performance vis-a-vis his/her peers. <br>
					<li>Generate individualised support quizzes based on performance .
				<ul>
			</p>
			<br >
			<br>

		
			<div id="images">
				<hr />
				<p class="img_head">Technologies used :</p> 
				<ul>
				      <li><a href="http://www.bluetooth.com"><img src="images/2a.png" alt="bluetooth"> </a></li>
				      <li><a href="http://www.java.com" >    <img src="images/3a.jpg" alt="java" >      </a></li>
				      <li><a href="http://www.mysql.com">    <img src="images/6.jpg" alt="mySQL" >	</a></li>
				      <li><a href="http://www.oracle.com/technetwork/java/javame/index.html" ><img src="images/5.jpg" alt="j2me"></a></li> 
				</ul>
			</div>
		</div>
		<br><br/>
		<div id ="sidebar">
			<div class="login">
				<div class="top">Login</div>
				<div class ="middle ">
					<form name="myform"  action="Admin_Home.jsp" onsubmit="return validateForm()">  <!--action= "login1.php" method="post" -->
						Name: <input type="text" name="name" size="18"/><br /><br>
						
						Password:     <input type="password" name="password" size="18"  /><br /><br>
						<!--Designation: 
							<select  name="designation" value="designation">
							<option value="-1" selected>-Select- </option>
							<option value="student">Student</option>
							<option value="teacher">Teacher</option>
							<option value="admin"> Admin   </option>
							</select> <br/><br><br>-->
						<div id="button" ><input type="submit" value="Sign In" name="Signin "/></div><br>
					</form>	
					
					<div><a href="asdf.jsp" font=10px >Forgot password/username?</a></div>
					</div>

				</div>
			</div>
			<br/><br><br/><br><br/><br><br/><br><br/><br><br/><br><br/><br><br/>  
			 		
		</div>
			<div class="reg_outer">
								
				<div id="register"><a href="insti_reg.jsp" >New User Register Here</a></div>
			</div>

<br><br/><br><br/><br><br/>
</div>
			
	
	
	<!--<div id="footer"> 
		Indian Institute of Technology Bombay,2011<br>Website designed by Abhinav Kumar
	</div>-->


</body>
</html>
