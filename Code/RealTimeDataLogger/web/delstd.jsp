
<%@page import="Validate.Validation" %>
<%@page import="tease.dao.StudentDAO" %>
<%! boolean x,y,z,p;
int a;
String str;
%>
<% 
try {
Validation val=new Validation();
StudentDAO s=new StudentDAO();
str=request.getParameter("fnamesu");
if(str!=null){
a=Integer.parseInt(str);
s.deleteStudent(a);
 %>
 <jsp:forward page="msginsert.jsp"/>
<%
}

else{
    %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}
}
catch(Exception e){
     %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}
%>

