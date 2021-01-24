package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class welcomeAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-1.10.2.js\"></script>\n");
      out.write("        \n");
      out.write("        <title>CRS Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("                ");

                    if(session.getAttribute("login")==null || session.getAttribute("login")=="") //check if condition for unauthorize user not direct access welcome.jsp page
                    {
                        response.sendRedirect("indexAdmin.jsp");
                    }
                
      out.write("\n");
      out.write("    \n");
      out.write("        <!-- Navigation -->\n");
      out.write("        <div id=\"nav-placeholder\">\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("                    <a class=\"navbar-brand\" href=\"welcome.jsp\">Car Rental System</a>\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\n");
      out.write("                      <ul class=\"navbar-nav\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                          <a class=\"nav-link\" href=\"#\">Profile</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                          <a class=\"nav-link\" href=\"RentalHistoryController\">Rental History</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                          <a class=\"nav-link\" href=\"#\">Add Car</a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                      </ul>\n");
      out.write("                    </div>\n");
      out.write("                      <form class=\"form-inline\" action=\"logoutAdmin.jsp\">\n");
      out.write("                        \n");
      out.write("                        <button class=\"btn btn-outline-danger my-2 my-sm-0\" type=\"submit\">Logout</button>\n");
      out.write("                      </form>\n");
      out.write("                  </nav>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("        <!-- Body -->\n");
      out.write("        <div class=\"jumbotron\">\n");
      out.write("            <h1 class=\"display-4\">Welcome, ");
      out.print(session.getAttribute("login"));
      out.write(" </h1>\n");
      out.write("                <p class=\"lead\">This is a website for you to rent cars based on hourly rates. We have different types of cars from different models for you to choose from.</p>\n");
      out.write("                <hr class=\"my-4\">\n");
      out.write("                <p>Start by simply browsing our car list!</p>\n");
      out.write("                <p class=\"lead\">\n");
      out.write("                <a class=\"btn btn-outline-dark btn-lg\" href=\"RentalHistoryController\" role=\"button\">Rental History</a>\n");
      out.write("                </p>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
