package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class indexAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');

    if(session.getAttribute("login")!=null)//check login session user not access or back to register.jsp page
    {
        response.sendRedirect("welcomeAdmin.jsp"); //session login user not back to index.jsp page or not type direct in url
    }

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("\t<title>SAK CRS Login Page</title>\n");
      out.write("\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/login-register.css\">\n");
      out.write("\t\n");
      out.write("\t<script>\n");
      out.write("\t\t\n");
      out.write("\t\tfunction validate()\n");
      out.write("                {\n");
      out.write("                        var username = document.LoginForm.txt_username; //get form name \"LoginForm\" and textbox name \"txt_username\" store in variable username\n");
      out.write("                        var password = document.LoginForm.txt_password; //get form name \"LoginForm\" and textbox name \"txt_password\" store in variable password\n");
      out.write("\t\t\t\t\n");
      out.write("                     if (username.value == null || username.value == \"\") //check username textbox not blank\n");
      out.write("                        {\n");
      out.write("                            window.alert(\"please enter username ?\"); //alert message\n");
      out.write("                            username.style.background = '#f08080'; //set textbox color\n");
      out.write("                            username.focus();\n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("            if (password.value == null || password.value == \"\") //check password textbox not blank\n");
      out.write("            {\n");
      out.write("\t\twindow.alert(\"please enter password ?\"); //alert message\n");
      out.write("\t\tpassword.style.background = '#f08080'; //set textbox color\n");
      out.write("\t\tpassword.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("            }\n");
      out.write("\t}\n");
      out.write("\t\t\t\n");
      out.write("\t</script>\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("    <div class=\"main-content\">\n");
      out.write("\n");
      out.write("        <form class=\"form-register\" method=\"post\" name=\"myform\" onsubmit=\"return validate();\" action=\"LoginControllerAdmin\">\n");
      out.write("\n");
      out.write("            <div class=\"form-register-with-email\">\n");
      out.write("\n");
      out.write("                <div class=\"form-white-background\">\n");
      out.write("\n");
      out.write("                    <div class=\"form-title-row\">\n");
      out.write("                        <h1>Admin Login</h1>\n");
      out.write("                        <br>\n");
      out.write("                        <img src=\"img/admin.jpg\" alt=\"Error displaying icon\" class=\"caricon\" style=\"width:200px\">\n");
      out.write("                    </div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<p style=\"color:red\">\t\t\t\t   \t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\n");
      out.write("                                        ");

                                            if(request.getAttribute("WrongLoginMsg")!=null)
                                                {
                                                        out.println(request.getAttribute("WrongLoginMsg")); //get login error message from LoginController
                                                }
                                            if(request.getAttribute("RegiseterSuccessMsg")!=null)
                                                {
                                                        out.println(request.getAttribute("RegiseterSuccessMsg")); //get register success message from RegisterController
                                                }
                                        
      out.write("\n");
      out.write("                                        \n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t   \n");
      out.write("\t\t\t\t   </br>\n");
      out.write("\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <label>\n");
      out.write("                            <span>Username</span>\n");
      out.write("                            <input type=\"text\" name=\"txt_username\" id=\"username\" placeholder=\"enter username\">\n");
      out.write("                        </label>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <label>\n");
      out.write("                            <span>Password</span>\n");
      out.write("                            <input type=\"password\" name=\"txt_password\" id=\"password\" placeholder=\"enter password\">\n");
      out.write("                        </label>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<input type=\"submit\" name=\"btn_login\" value=\"LoginAdmin\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("              \n");
      out.write("        \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
