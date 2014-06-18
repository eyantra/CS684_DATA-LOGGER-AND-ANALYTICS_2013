package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import tease.bean.Login;

public final class Admin_005fHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>Main Home Page</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"sty.css\" media=\"screen\" />\n");
      out.write("<script type=\"text/javascript\" src=\"tree.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"tree.css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"main.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"wrap\">\n");
      out.write("\n");
      out.write("<div id=\"top\"></div>\n");
      out.write("<div id=\"header\">\n");
      out.write("    <img align=\"left\" src=\"images/4b.gif\" height=\"90\" width=\"120\"/>\n");
      out.write("<div class=\"logo\">\n");
      out.write(" <h1>Data Logger and Analytics</h1>\n");
      out.write("    <h3>CS684: Course Project</h3>\n");
      out.write("    <h5>Indian Institute of Technology, Bombay</h5></div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"menu\">\n");
      out.write("<ul>\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"about.jsp\">About Project</a></li>\n");
      out.write("                        <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("\t\t\t<li><a href=\"teamMembers.jsp\">Team Members</a></li>\n");
      out.write("\t\t\t<li><a href=\"http://www.iitb.ac.in\">IITB</a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"content\">\n");
      out.write("\n");
      out.write("<div class=\"right\">\n");
      out.write("                <noscript>\n");
      out.write("                <ul><strong><u>Javascript is not enabled on your browser. For better functionality, please enable it before you fill the information.</u></strong></ul>\n");
      out.write("                </noscript>\n");
      out.write("\n");
      out.write("<h2><a href=\"#\">Details</a></h2>\n");
      out.write("\n");
      out.write("</div>\n");
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
      out.write("    <script type=\"text/javascript\">\n");
      out.write("//ddtreemenu.createTree(treeid, enablepersist, opt_persist_in_days (default is 1))\n");
      out.write("ddtreemenu.createTree(\"treemenu1\", true)\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div style=\"clear: both;\"></div>\n");
      out.write("</div>\n");
      out.write("<div id=\"footer\">\n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
