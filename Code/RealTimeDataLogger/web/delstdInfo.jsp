<%@page import="java.util.ArrayList"%>
    <%@page import="tease.bean.Student"%>
    <%@page import="tease.dao.StudentDAO"%>
    <%@include file="DbCon.jsp" %>
    <%! ArrayList<Student> al=null; %>
    <%
    StudentDAO std=new StudentDAO();
       al=std.getStudent();
       %>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>TEASE@IITB</title>
<noscript>
    <meta http-equiv="refresh" content="0; troubles/error.html" />
</noscript>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="SHORTCUT ICON" href="images/myIcon.ico"/>

<link rel="stylesheet" type="text/css" href="sty.css" media="screen" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="rss-articles/" />
<script type="text/javascript" src="tree.js"></script>

<link rel="stylesheet" type="text/css" href="tree.css" />
<link rel="stylesheet" type="text/css" href="student_register.css" />
<script type="text/javascript" src="main.js"></script>
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
<li><a href="Admin_Home.jsp">	Home</a></li>
			<li><a href="infm.html">	About Us</a></li>

			<li><a href="syllabus.html">	Contact Us</a></li>
			<li><a href="exam_centre.html">Feed Back</a></li>
			<li><a href="how_to_apply.html">FAQ's</a></li>
			<li><a href="http://www.iitb.ac.in">	     IITB</a></li>

			<li><a href="main.jsp">Logout</a></li>
</ul>
</div>
<div id="content">

<div class="right">
    <div id="stylized" class="myform">
         
            <form id="delstdform" name="delstdform" action="delstd.jsp" onsubmit="return validateDelStdForm();">
                                <h3>Delete Student</h3>
                
                
                
                 
                <p>
                   Fields marked with<strong>*</strong>are mandatory
                </p>
                
                

                <label><span>Enter First Name :<strong>*</strong></span>
                    
                  <!--  <select name="fnamed">     
                    <option value="--Select--">--Select--</option>s
    
                  <%--     <%
    //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //Connection con = DriverManager.getConnection("jdbc:odbc:student");

    //Statement st=con.createStatement();
   for(int i=0;i<al.size();i++)
             {
       Student s=al.get(i);
       %>
       <option value="<%=s.getFirstName()%>"><%=s.getFirstName()%></option>
    <%
    }
    %></select>--%>
               -->
               <% out.println(request.getParameter("fNamed"));%>
               <input id="firstName" type="text" name="firstName2" value="<%=request.getParameter("fNamed")%>" onfocus="showRequiredInfo('firstNameInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="firstNameInfo" class="required">First name should have 3 to 30 characters. Only letters are allowed.</div>
                <h5 id="firstNameError">Invalid first name.</h5>
                
                <label><span>Last Name :<strong>*</strong></span>
                    <select>    
                    <option value="--Select--">--Select--</option>
    
                    <%
    //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //Connection con = DriverManager.getConnection("jdbc:odbc:student");

    //Statement st=con.createStatement();
   for(int i=0;i<al.size();i++)
             {
       Student s=al.get(i);
       %>
       <option value="<%=s.getLastName()%>"><%=s.getLastName()%></option>
    <%
    }
    %></select>
                    
      <!--          <input id="lastName" type="text" name="lastName" value="" onfocus="showRequiredInfo('lastNameInfo');" onblur="hideRequiredInfo()"/>
          -->      </label>

                <div id="lastNameInfo" class="required">Last name should have 3 to 30 characters. Only letters are allowed.</div>
                <h5  id="lastNameError">Invalid last name.</h5>
                

                

                <label><span>Student Roll no. :<strong>*</strong></span>
                    <!--<select id="srollno" name="srollno">
                    <option value="-1"><-Select one-></option>
                    
                    <option value="1">1</option>
                    
                    <option value="2">21</option>

                    
                </select>-->
                    <select>
    <option value="--Select--">--Select--</option>
    
    <%
    //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //Connection con = DriverManager.getConnection("jdbc:odbc:student");

    //Statement st=con.createStatement();
   for(int i=0;i<al.size();i++)
             {
       Student s=al.get(i);
       %>
       <option value="<%=s.getFirstName()%>"><%=s.getFirstName()%></option>
    <%
    }
    %>
    </select>
       
                </label>
    
                <h5  id="srollnoError">Select roll no.</h5>

                <label><span></span>&nbsp;&nbsp;&nbsp;<a href="delstdInfo.jsp">VIEW INFO</a></label>
               
                
                
                 
           
<%
                Student st;
                StudentDAO sd = new StudentDAO();
                
                st=sd.getStudentByFirstName("Nishi"); 
               out.println("Your username is: " + request.getParameter("firstName"));

                %>    
    
    
                <label><span>Gender :</span>
                    <input id="gender" disabled="disabled" type="text" name="gender" value="<%=st.getGender()%>" />
                </label>
                
                <label><span>Date of Birth :</span>
                    <input type="text" disabled="disabled" id="demo1" name="dob" value="<%=st.getBirthDate()%> " />
                        
                
                    </label>
               
                <label><span>Email :</span>
                    <input id="email" disabled="disabled" type="text" name="email" value="<%=st.getEmail()%>" />
                </label>
                
                

                <label><span>Mobile No :</span>
                    <input id="mobile" disabled="disabled" type="text" name="mobile" value="<%=st.getMobile()%>" />
                </label>
                
                <div class="spacer"></div>

                <div class="controls">
                    <button type="submit">Delete</button>
                    <button type="button">View Next</button>
                    <button type="reset" onclick="resetRegistrarationForm();">Cancel</button>
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

     <li><h6><a href='#'>Students</a></h6><ul><li><a href="student_register.jsp"><br>Add Student</a></li><li><a href="student_view.jsp">View Students</a></li><li><a href="student_delete.jsp">Delete Student</a></li><li><a href="student_update.jsp">Update Student </a></li><li><a href="enroll.jsp">Enrollment</a></li></ul>
    <br><li><h6><a href='#'>Teachers</a></h6><ul><li><a href="teacher_register.jsp"><br>Add Teacher</a></li><li><a href="teachers_view.jsp">View Teachers</a></li><li><a href="teacher_delete.jsp">Delete Teacher</a></li><li><a href="teacher_update.jsp">Update Teacher</a></li><li><a href="assgn.jsp">Assignment</a></li></ul>
    <br><li><h6><a href='#'>Groups</a></h6><ul><li><a href="subgroup_add.jsp">Add Group</a></li><li><a href="group_view.jsp">View Groups</a></li><li><a href="group_delete.jsp">Delete Group </a></li><li><a href="group_edit.jsp">Edit Group</a></li></ul>
    <br><li><h6><a href='#'>Tests</a></h6><ul><li><a href="test_schedule.jsp"><br>Test Schedule</a></li><li><a href="test_eligiblity.jsp">Test Eligibility</a></li><li><a href="test_desc.jsp">Test Description</a></li><li><a href="test_details.jsp">Test Details</a></li></ul>

    
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