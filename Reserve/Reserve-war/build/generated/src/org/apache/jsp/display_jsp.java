package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.EmployeeDAO;
import java.util.ArrayList;
import model.EmployeeModel;

public final class display_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("        <title>YouReserve</title>\n");
      out.write("\n");
      out.write("        <link href=\"css/css-edited.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <script src= \"/js/jscript.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"font-awesome-4.6.3/css/font-awesome.min.css\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"body\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                <div id=\"me\" class=\"modal-header\">\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>\n");
      out.write("                    <h4 style=\"text-align:center\">Search Employee details</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\" style=\"text-align:left\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"jumbotron\">\n");
      out.write("                            <div class=\"container text-center\">\n");
      out.write("                                <div class=\"panel panel-success\">\n");
      out.write("\n");
      out.write("                                    <div class=\"panel-heading\">\n");
      out.write("                                        <form action=\"display.jsp\" id=\"searchme-form\" onsubmit=\"return ValidateSearchForm2()\">\n");
      out.write("                                             <label>Employee ID:</label>\n");
      out.write("                                             <input type=\"text\" name=\"searchID\">\n");
      out.write("                                             <input class=\"btb btn-primary\" type=\"submit\" value=\"Search\">\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                ");

                                    try {
                                        if (request.getParameter("searchID") != null) {
                                            EmployeeModel model = EmployeeDAO.getEmployee(request.getParameter("searchID")).get(0);
                                            out.print("<br><br><br><br>");
                                            out.print("<label>ID:</label>" + model.getId() + "<br><br>");
                                            out.print("<label>Name:</label>" + model.getName() + "<br><br>");
                                            out.print("<label>Address:</label>" + model.getAddress() + "<br><br>");
                                            out.print("<label>Email:</label>" + model.getEmail() + "<br><br>");
                                            out.print("<label>Age:</label>" + model.getAge() + "<br><br>");
                                            out.print("<label>Phone:</label>" + model.getPhone() + "<br><br>");
                                            out.print("<label>Section:</label>" + model.getSection() + "<br><br>");
                                            out.print("<label>Job Title:</label>" + model.getJob() + "<br><br>");
                                            out.print("<label>Skills:</label>" + model.getSkills() + "<br><br>");
                                            out.print("<label>Description:</label>" + model.getDesc() + "<br><br>");
                                        } 
                                             
                                    } catch (Exception ex) {
                                        out.println("Employee does not exist <br><br>");
                                       // out.print(ex.toString());
                                       // request.setAttribute("eRes", ex.toString());
                                    }
                                
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-footer\">\n");
      out.write("\n");
      out.write("                <a href=\"fullform.jsp\" class=\"btn btn-primary\" role=\"button\">Back</a>\n");
      out.write("                <a href=\"index.jsp\" class=\"btn btn-primary\" role=\"button\">Home</a>\n");
      out.write("            </div>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\n");
      out.write("        </div>\t\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\t\n");
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
