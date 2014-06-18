<%@page import="tease.helper.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import="tease.bean.Test" %>
<%@page import="tease.dao.TestDAO" %>
<jsp:useBean id="conn" class = "tease.helper.DBConnection" scope="page"/>

<jsp:useBean id="val" class = "Validate.Validation" scope="page"/>
<jsp:useBean id="test" class = "tease.bean.Test" scope="page"/>
<%! 
int x,r;
Float y;
Boolean z;
String y1,r1,a,b;



%>
<%


try{

Connection con=conn.getConnection();
TestDAO s=new TestDAO();


x=Integer.parseInt(request.getParameter("topname"));


a=request.getParameter("dname");
b=request.getParameter("tdesc");
y1=request.getParameter("marks");
r1=request.getParameter("dur");
//z=val.isNumeric(request.getParameter("status"));
z = val.isvarchar(request.getParameter("dname"));
if( x==-1 || y1=="" || r1=="" || r1.length()>10){

    %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}



if (x!=-1  && a!="" && a.length()<=20 && b!="" && b.length()<=100 && z)
{
 y=Float.parseFloat(request.getParameter("marks"));
 r=Integer.parseInt(request.getParameter("dur"));
 test.setDisplayName(a);
 test.setDuration(r);
 test.setFullDescription(b);
 test.setMarks(y);
 test.setIdTopic(x);
 
s.insertTest(test);
 %>
 <jsp:forward page="msginsert.jsp"/>
<%
}
   
else
       {
    %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}
//i f(x && y && z && p &&  t!=-1)

conn.closeConnection(con);
}

catch(Exception e){
%>
 <jsp:forward page="msginsertfail.jsp"/>
<%

}



%>

  