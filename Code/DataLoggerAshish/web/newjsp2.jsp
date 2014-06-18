<%@page import="Validate.Validation" %>
<%! String s1; 
boolean x,y;

%>

<%
Validation val=new Validation();
s1="abhinav@gmail.com";
s1=val.trim(s1);
out.println(s1);
y=val.isEmailValid(s1);
out.println(y);
%>