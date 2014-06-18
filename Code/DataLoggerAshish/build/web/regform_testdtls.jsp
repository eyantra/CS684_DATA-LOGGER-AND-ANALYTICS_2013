<%@page import="Validate.Validation"%>
<%@page import="tease.helper.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import="tease.bean.TestDetails" %>
<%@page import="tease.dao.TestDetailsDAO" %>
<jsp:useBean id="conn" class = "tease.helper.DBConnection" scope="page"/>

<jsp:useBean id="val" class = "Validate.Validation" scope="page"/>
<jsp:useBean id="testdt" class = "tease.bean.TestDetails" scope="page"/>
<%! 
int b1,c1,d1,a,b,c,d;
float g,f;
String e;
String a1,f1,g1;
String p,q,r;
Boolean l,m,z,z1;


%>
<%

try {


Connection con=conn.getConnection();
TestDetailsDAO s=new TestDetailsDAO();


a=Integer.parseInt(request.getParameter("testname1"));
//a1=request.getParameter("");
p=request.getParameter("seq");
q=request.getParameter("qtype");
r=request.getParameter("qopt");
        


e=request.getParameter("ans");
f1=request.getParameter("marks");
g1=request.getParameter("nmarks");

z=val.isStringInRange(e, 1, 15);
z1=val.checkName(e);
if (p=="" || q=="" || r=="" || f1=="" || g1=="" || e=="" || a==-1 || p.length()>10 || q.length()>10 || r.length()>10){

    %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}

if (p!=null && q!=null && r!=null && f1!="" && g1!="" && e.length()<16 && a!=-1 && e!="" && z && z1){


b=Integer.parseInt(request.getParameter("seq"));
c=Integer.parseInt(request.getParameter("qtype"));
d=Integer.parseInt(request.getParameter("qopt"));
f=Float.parseFloat(request.getParameter("marks"));
g=Float.parseFloat(request.getParameter("nmarks"));
    
testdt.setMarks(f);
testdt.setNegativeMarks(g);
testdt.setQuestionOptions(d);
testdt.setQuestionType(c);
testdt.setSequence(b);
testdt.setCorrectAnswer(e);
testdt.setIdTest(a);
s.insertTestDetails(testdt);
    
 %>
 <jsp:forward page="msginsert.jsp"/>
<%



}
else{ %>
 <jsp:forward page="msginsertfail.jsp"/>
<%}
conn.closeConnection(con);
  
}

catch(Exception e){
    %>
 <jsp:forward page="msginsertfail.jsp"/>
<%
}

    

//i f(x && y && z && p &&  t!=-1)








%>

  