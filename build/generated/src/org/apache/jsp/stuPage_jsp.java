package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class stuPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/security.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

    response.addHeader("Pragma","no-cache");//pragma means global browser(for all browers)
    response.addHeader("cache-control","no-store");//dont store cache 
    String value=(String)session.getAttribute("CALL");
    if (value==null)
    {
        response.sendRedirect("home.jsp");
    }
    if (session==null)
    {
        response.sendRedirect("home.jsp");
    }

      out.write('\n');
      out.write('\n');
String name=(String)session.getAttribute("CALL");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write(" <title></title>\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<header class=\"site-header clearfix\">\n");
      out.write(" <nav>\n");
      out.write("  <div class=\"logo\">\n");
      out.write("   <h1>Acropolis PTM Portal</h1>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"menu\"> \n");
      out.write("   <ul>\n");
      out.write("    <li><a href=\"adminPage.jsp\">Home</a></li>\n");
      out.write("    <li><a href=\"updatePassword.jsp\">Update Password</a></li>\n");
      out.write("    <li><a href=\"#\">Contact</a></li>\n");
      out.write("    <li><a href=\"destroySession.jsp\">LogOut</a></li>\n");
      out.write("   </ul>\n");
      out.write("  </div>\n");
      out.write(" </nav>\n");
      out.write("    <div class=\"centercontainer\">\n");
      out.write("<h1 style=\"color:white;background: linear-gradient(57deg, #00C6A7 , #1E4D92 ); font-weight: 900;padding: 10px;text-align: center;height: 150px;line-height: 100px;\">Welcome ");
      out.print(name);
      out.write(" ! </h1>\n");
      out.write("<br>     <br> <br>   \n");
      out.write("<div class=\"centreAlign\"> \n");
      out.write("            \n");
      out.write("  \n");
      out.write("   <a href=\"giveFeed.jsp\" class=\"homebuttons\">Give Feedback</a>\n");
      out.write("   <a href=\"registerConcern.jsp\" class=\"homebuttons\">Register Concern</a>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write(" </div>\n");
      out.write("\n");
      out.write("</header>\n");
      out.write("    \n");
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
