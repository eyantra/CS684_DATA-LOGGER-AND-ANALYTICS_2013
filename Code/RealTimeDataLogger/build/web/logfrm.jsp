<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%@page import="tease.bean.Login" %>
<%@page import="tease.dao.LoginDAO" %>

<%! boolean x,y; %>
<%
try{
Login lg=new Login();
LoginDAO lgd=new LoginDAO();
    lg.setUserName(request.getParameter("name"));
    lg=lgd.getLogin(lg.getUserName());
     if(lg!=null)
        {
         if(lg.getPassword().equals(request.getParameter("password")))
                   { %><jsp:forward page="Admin_Home.jsp"/><%  }
         else {
        %><jsp:forward page="index.jsp"/><%
       }
          }
       else {
        %><jsp:forward page="index.jsp"/><%
       }
}
catch(Exception e)
               {
     %><jsp:forward page="index.jsp"/><%
       }
%>
