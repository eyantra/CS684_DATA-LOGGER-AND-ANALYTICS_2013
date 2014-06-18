package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import tease.bean.DataLog;
import tease.dao.DataLogDAO;

public final class temperature_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String s,s1;
int x,j,i;
float currV;
DataLog dl;
DataLogDAO dla;
float newt;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

//Connection con=lnk3.getConnection();
dl= new DataLog(); 
dla=new DataLogDAO();
dl=dla.getDataLogTemperature();
//td1=tda1.getStudent();
//x=request.getParameterId("fname1");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//Dsd XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/Dsd/xhtml1-strict.dsd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("<title>TEASE@IITB</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"sty.css\" media=\"screen\" />\n");
      out.write("<script type=\"text/javascript\" src=\"tree.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"main.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"tree.css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"main.css\" />\n");
      out.write("</head>\n");
      out.write("<head>\n");
      out.write("<style>\n");
      out.write("p.pos_fixed\n");
      out.write("{\n");
      out.write("position:fixed;\n");
      out.write("top:325px;\n");
      out.write("right:555px;\n");
      out.write("box-shadow: 10px 10px 5px #888888;\n");
      out.write("}    \n");
      out.write("div.ex\n");
      out.write("{\n");
      out.write("position:fixed;\n");
      out.write("top:220px;\n");
      out.write("right:555px;    \n");
      out.write("width:220px;\n");
      out.write("padding:10px;\n");
      out.write("border:3px solid gray;\n");
      out.write("background-color:silver;\n");
      out.write("margin:0px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>     \n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"wrap\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"top\"></div>\n");
      out.write("<div id=\"header\">\n");
      out.write("    <img align=\"left\" src=\"images/4a.jpg\" height=\"90\" width=\"120\"/>\n");
      out.write("<div class=\"logo\">\n");
      out.write("    <h1>Data Logger and Analytics</h1>\n");
      out.write("    <h3>CS684: Course Project</h3>\n");
      out.write("    <h5>Indian Institute of Technology, Bombay</h5></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"menu\">\n");
      out.write("<ul>\n");
      out.write("                       \n");
      out.write("                        <li><a href=\"Admin_Home.jsp\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("                        <li><a href=\"contact.jsp\">Contact Us</a></li>\n");
      out.write("\t\t\t<li><a href=\"feedback.jsp\">Feed Back</a></li>\n");
      out.write("\t\t\t<li><a href=\"faq.jsp\">FAQ's</a></li>\n");
      out.write("\t\t\t<li><a href=\"http://www.iitb.ac.in\">IITB</a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"content\">\n");
      out.write("\n");
      out.write("<div class=\"right\">\n");
      out.write("\n");
      out.write("<div id=\"stylized\" class=\"myform\">\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <p class=\"pos_fixed\"><a href=\"graph_temperature.jpg\"><img src=\"graph_temperature.jpg\" width=\"350\" height=\"250\" /></a></p> \n");
      out.write("    <h3>Temperature Reading</h3><br>\n");
      out.write("             <noscript> \n");
      out.write("                  <ul><strong><u>Javascript is not enabled on your browser. For better functionality, please enable it before you fill the information.</u></strong></ul>\n");
      out.write("             </noscript>\n");
      out.write("        \n");
      out.write(" <table id=\"view\" border=\"1\" >\n");
      out.write("                    <thead>\n");
      out.write("    <tr>\n");
      out.write("        <th> Serial No </th>\n");
      out.write("        <th> Timestamp </th>\n");
      out.write("        <th> Temperature </th>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </tr>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("   \n");
      out.write(" ");
      while(dl!=null) {               
      out.write(" <tr> \n");
      out.write("                        \n");
      out.write("                          <td>");
      out.print(dl.getSerial_no());
      out.write(" </td>\n");
      out.write("                          <td>");
      out.print(dl.getTime_stamp());
      out.write(" </td>\n");
      out.write("                          ");
 newt=dl.getTemperature(); 
      out.write("\n");
      out.write("                          <td>");
      out.print(dl.getTemperature());
      out.write(" </td>\n");
      out.write("                          \n");
      out.write("                          ");
 dl=dla.getDataLogTemperature(); 
     
      out.write("</tr>  ");
               }
      out.write(" \n");
      out.write("            \n");
      out.write("            \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("</tbody>\n");
      out.write("                </table>\n");
      out.write("    <div class=\"ex\">\n");
      out.write("        <h3>Current Temperature</h3>\n");
      out.write("       ");
      out.print(newt);
      out.write("\n");
      out.write("    \n");
      out.write("    </div><br> \n");
      out.write("           \n");
      out.write("                       \n");
      out.write("        </div>  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"left\">\n");
      out.write("\n");
      out.write("<h2>Features Monitored : </h2><br>\n");
      out.write("\n");
      out.write("<ul id=\"treemenu1\" class=\"treeview\">\n");
      out.write("\n");
      out.write("   <li><a href='#'>Temperature</a><ul><li><a href=\"temperature_details.jsp\"><br>Today</a></li><li><a href=\"temperature_details.jsp\">Last Week</a></li><li><a href=\"temperature_details.jsp\">Last Month</a></li></ul>\n");
      out.write("   <br> <li><a href='#'>Humidity</a><ul><li><a href=\"humidity_details.jsp\"><br>Today</a></li><li><a href=\"humidity_details.jsp\">Last Week</a></li><li><a href=\"humidity_details.jsp\">Last Month</a></li></ul>\n");
      out.write("   <br><li><a href='#'>Pressure</a><ul><li><a href=\"pressure_details.jsp\"><br>Today</a></li><li><a href=\"pressure_details.jsp\">Last Week</a></li><li><a href=\"pressure_details.jsp\">Last Month</a></li></ul>\n");
      out.write("   <br><li><a href='#'>Luminosity</a><ul><li><a href=\"luminosity_details.jsp\"><br>Today</a></li><li><a href=\"luminosity_details.jsp\">Last Week</a></li><li><a href=\"luminosity_details.jsp\">Last Month</a></li></ul>     \n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("//ddtreemenu.createTree(treeid, enablepersist, opt_persist_in_days (default is 1))\n");
      out.write("ddtreemenu.createTree(\"treemenu1\", true)\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div style=\"clear: both;\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
