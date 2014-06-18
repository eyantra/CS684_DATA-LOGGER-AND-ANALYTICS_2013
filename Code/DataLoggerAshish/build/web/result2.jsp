
<%@page import="tease.Result.*" %>
<%! String s1,s2,s3,s4,link;
int a,b;
boolean x,y,z;
%>

<%try{
Result r=new Result();
s1=request.getParameter("result");
if(s1.equals("stu_name")){
out.println("Student selected");

s2=request.getParameter("std");
if(s2!=null){
a=Integer.parseInt(s2);
s3="Student" + a +".html";
out.println(s3);
}


}
else if(s1.equals("grp_name")){
out.println("Group selected");
s1=request.getParameter("grp");
if(s1!=null){
a=Integer.parseInt(s1);
s2="Test0Group" + a +".html";
out.println(s2);
}    
}

else if(s1.equals("test_name")){
out.println("Test selected");
s3=request.getParameter("test");
if(s3!=null){
a=Integer.parseInt(s3);
s4="Test" + a +"Group0.html";
out.println(s4);
}
}
else if(s1.equals("grp&testname")){
out.println("Group and Test selected");
s1=request.getParameter("grp");
s3=request.getParameter("test");
if(s1!=null && s3!=null){
a=Integer.parseInt(s3);
b=Integer.parseInt(s1);
s4="Test" + a +"Group" + b +".html";
out.println(s4);
//link="C:/Users/alefiya/Desktop/Alefiya/";
}
%>

<jsp:forward page="<%=s4%>"/>
<%
}
}
catch(Exception e){
    %>

<jsp:forward page="msginsertfail.jsp"/>
<%
}
%>