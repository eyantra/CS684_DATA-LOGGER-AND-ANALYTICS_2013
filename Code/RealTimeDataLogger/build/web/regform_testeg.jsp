<%@page import="tease.helper.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import="tease.bean.TestElegibility" %>
<%@page import="tease.dao.TestElegibilityDAO" %>
<jsp:useBean id="conn" class = "tease.helper.DBConnection" scope="page"/>

<jsp:useBean id="val" class = "Validate.Validation" scope="page"/>
<jsp:useBean id="testeg" class = "tease.bean.TestElegibility" scope="page"/>
<%! 
String r;
int x,t,y;
Boolean z;



%>
<%




Connection con=conn.getConnection();
TestElegibilityDAO s=new TestElegibilityDAO();


x=Integer.parseInt(request.getParameter("tname"));

y=Integer.parseInt(request.getParameter("groupname"));
r=request.getParameter("status");
//z=val.isNumeric(request.getParameter("status"));

if( x==-1 || y==-1 || r=="" || r.length()>10){

    %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}



if (x!=-1 && y!=-1 )
{
 t=Integer.parseInt(request.getParameter("status"));
testeg.setStatus(t);
testeg.setIdGroup(y);
testeg.setIdTest(x);
s.insertTestElegibility(testeg);
 %>
 <jsp:forward page="msginsert.jsp"/>
<%
}
   
//i f(x && y && z && p &&  t!=-1)






conn.closeConnection(con);

%>

  