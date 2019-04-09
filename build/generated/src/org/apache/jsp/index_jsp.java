package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>E-Billing System</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <p><center><h1>WELCOME TO E-BILLING</h1></center></p>\n");
      out.write("    <center>\n");
      out.write("        <form method=\"get\" action=\"jsp_upload.jsp\">\n");
      out.write("        Table No:<input type=\"number\" name=\"tno\" max=\"15\" min=\"1\"><br><br>\n");
      out.write("        <fieldset style=\"width: 190px;\">\n");
      out.write("            <legend>Select Bread</legend>\n");
      out.write("        Bread:<input style=\"width: 28px;\" type=\"number\" name=\"b1\"><br><br>\n");
      out.write("        Chapati:<input style=\"width: 28px;\" type=\"number\" name=\"b2\"><br><br>\n");
      out.write("        Butter Chapati:<input style=\"width: 28px;\" type=\"number\" name=\"b3\"><br><br>\n");
      out.write("        Tandoori Roti:<input style=\"width: 28px;\" type=\"number\" name=\"b4\"><br><br>\n");
      out.write("        </fieldset>\n");
      out.write("        <fieldset style=\"width: 190px;\">\n");
      out.write("            <legend>Select Main Course</legend>\n");
      out.write("        Cheese Butter Masala:<input style=\"width: 28px;\" type=\"number\" name=\"v1\"><br><br>\n");
      out.write("        Panner Rajwadi:<input style=\"width: 28px;\" type=\"number\" name=\"v2\"><br><br>\n");
      out.write("        Veg Handi:<input style=\"width: 28px;\" type=\"number\" name=\"v3\"><br><br>\n");
      out.write("        Bhindi Masala:<input style=\"width: 28px;\" type=\"number\" name=\"v4\"><br><br>\n");
      out.write("        Paneer Kadai:<input style=\"width: 28px;\" type=\"number\" name=\"v5\"><br><br>\n");
      out.write("        Kaju Paneer:<input style=\"width: 28px;\" type=\"number\" name=\"v6\"><br><br>\n");
      out.write("        </fieldset>\n");
      out.write("        <fieldset style=\"width: 190px;\">\n");
      out.write("            <legend>Select Drinks</legend>\n");
      out.write("        Butter Milk:<input style=\"width: 28px;\" type=\"number\" name=\"d1\"><br><br>\n");
      out.write("        Coca Cola:<input style=\"width: 28px;\" type=\"number\" name=\"d2\"><br><br>\n");
      out.write("        Sprite:<input style=\"width: 28px;\" type=\"number\" name=\"d3\"><br><br>\n");
      out.write("        Pepsi:<input style=\"width: 28px;\" type=\"number\" name=\"d4\"><br><br>\n");
      out.write("        Mazza:<input style=\"width: 28px;\" type=\"number\" name=\"d5\"><br><br>\n");
      out.write("        </fieldset><br><br>\n");
      out.write("        <a href=\"/OneServlet\" name=\"go\">GO</a><br><br>\n");
      out.write("        <center>OR</center><br>\n");
      out.write("        <input type=\"submit\" name=\"bill\" value=\"MAKE BILL\">\n");
      out.write("    </form>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
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
