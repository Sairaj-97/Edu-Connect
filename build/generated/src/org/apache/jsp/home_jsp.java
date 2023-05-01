package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
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
      out.write("      <h1 style=\"font-weight: 900;font-size: 40px;\">EduConnect</h1>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"menu\"> \n");
      out.write("   <ul>\n");
      out.write("       <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("    <li><a href=\"services.jsp\">Services</a></li>\n");
      out.write("    <li><a href=\"#\">About Us</a></li>\n");
      out.write("    <li><a href=\"contact.jsp\">contact</a></li>\n");
      out.write("   </ul>\n");
      out.write("  </div>\n");
      out.write(" </nav>\n");
      out.write(" <section>\n");
      out.write("     <div class=\"leftside\" id=\"leftDiv\"> \n");
      out.write("   <img src=\"ptm2.png\">\n");
      out.write("  </div>\n");
      out.write("  <div class=\"rightside\" id=\"rightDiv\"> \n");
      out.write("      <h1>EduConnect</h1>\n");
      out.write("   <p style=\"font-size: 40px;\">Communication should not be so hard.</p>\n");
      out.write("   <p style=\"font-size: 28px;\">Connecting Educators, Students and Parents.</p>\n");
      out.write("   <br><br>\n");
      out.write("   \n");
      out.write("    <a href=\"signInPage.jsp\" class=\"homebuttons\">Login</a>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write(" </section>\n");
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
