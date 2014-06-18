<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%
SimpleDateFormat formatter=new SimpleDateFormat("dd-MMM-yyyy");
Date date=null;
out.println(formatter.parseObject("12-may-2001"));

%>