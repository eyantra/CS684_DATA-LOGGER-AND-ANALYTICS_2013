<%@page import= "java.util.*" %>
<%@page import="tease.bean.Topic" %>
<%@page import="tease.dao.TopicDAO" %>
<%

TopicDAO gp=new TopicDAO();
Topic g=new Topic();

g=gp.getTopic();


%>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
<body>

<div id="wrap">



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<div id="top"></div>
<div id="header">
    <img align="left" src="images/4a.jpg" height="90" width="120"/>
<div class="logo">
    <h1>Indian Institute of Technology Bombay</h1>

</div>
<div class="details">
    <div>Welcome : Admin
</div>
    
</div>

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
         
            <form id="topicform" name="topicform" action="regform_topic.jsp" method="post" onsubmit="return validateTopicForm();">
                                <h3>Create Topic</h3>
                <p>
                   Fields marked with<strong>*</strong>are mandatory
                </p>
                
                <noscript> <ul><strong><u>Javascript is not enabled on your browser. For better functionality, please enable it before you fill the information.</u></strong></ul>
                   </noscript>
                
                 
                

                             
                <label><span>Parent Name :<strong>*</strong></span>
               <select id="prtname" name="prtname">
                    <option value="-1"><-Select one-></option>
                    
                     <% while(g!=null){ %>
                   <option value="<%=g.getIdTopic()%>"><%=g.getDisplayName()%></option>
                   <% g=gp.getTopic(); } %>


                    
                </select>
                </label>

               
                <h5  id="prtnameError">select one ParentGroupname.</h5>
                

                <label><span>Display Name :<strong>*</strong></span>
                    <input id="tpname" type="text" name="tpname" value=""  onfocus="showRequiredInfo('tpnameInfo');" onblur="hideRequiredInfo()"/>
   
                </label>
                <div id="tpnameInfo" class="required">
                              Please provide display name of group. Use upto 20 characters. Alphabets are allowed.
       
                </div>
                
                <h5 id="tpnameError">Invalid display name.</h5>
                

                <label><span>Full Description :<strong>*</strong></span>
                    <textarea name="fl_desc" cols="26" rows="6" onfocus="showRequiredInfo('fl_descInfo');" onblur="hideRequiredInfo()"></textarea>
                </label>
                <div id="fl_descInfo" class="required">
                              Please provide description of group. Use upto 100 alphabets.
       
                </div>
                <h5 id="fl_descError">Improper Description</h5>
                

                <div class="spacer"></div>

                <div class="controls">
                    <button type="submit">Create</button>
                    <button type="reset" onclick="resetTopicForm();">Reset</button>
                </div>
                <br />
               
            </form>
        
        
      
                       
        </div>  




</div>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">








<div class="left">

<h2>Available features : </h2><br>
<ul id="treemenu1" class="treeview">

   <li><a href='#'>Students</a><ul><li><a href="student_register.jsp"><br>Add Student</a></li><li><a href="student_view.jsp">View Students</a></li><li><a href="student_delete.jsp">Delete Student</a></li><li><a href="student_update.jsp">Update Student </a></li><li><a href="enroll.jsp">Enrollment</a></li></ul>
   <br> <li><a href='#'>Teachers</a><ul><li><a href="teacher_register.jsp"><br>Add Teacher</a></li><li><a href="teachers_view.jsp">View Teachers</a></li><li><a href="teacher_delete.jsp">Delete Teacher</a></li><li><a href="teacher_update.jsp">Update Teacher</a></li><li><a href="assgn.jsp">Assignment</a></li></ul>
   <br><li><a href='#'>Groups</a><ul><li><a href="subgroup_add.jsp"><br>Add Group</a></li><li><a href="group_view.jsp">View Groups</a></li><li><a href="group_delete.jsp">Delete Group </a></li></ul>
   <br><li><a href='#'>Location</a><ul><li><a href="location.jsp"><br>Add Location</a></li></ul>
   <br><li><a href='#'>Topic</a><ul><li><a href="topic.jsp"><br>Create Topic</a></li></ul>     
   <br><li><a href='#'>Tests</a><ul><li><a href="test_schedule.jsp"><br>Test Scheduling</a></li><li><a href="test_eligibility.jsp">Test Eligibility</a></li><li><a href="test_desc.jsp">Test Description</a></li><li><a href="test_details.jsp">Create Test Paper</a></li></ul>
   <br><li><a href='#'>Result</a><ul><li><a href="result1.jsp"><br>Get Result</a></li></ul>     
  
    
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