/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2020-06-17 06:23:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.http.HttpSession;

public final class Nation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("javax.servlet.http.HttpSession");
    _jspx_imports_classes.add("java.util.Random");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width-device-width\", initial-scale=\"1\">\r\n");
      out.write("<title>국가관리</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("\tmargin: 0px auto;\r\n");
      out.write("\tbackground-color: #FFFFFF;\r\n");
      out.write("\tbox-sizing : border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("div.top{\r\n");
      out.write("\tbackground: #42AD23;\r\n");
      out.write("    position: fixed;\r\n");
      out.write("\ttop:0;\r\n");
      out.write("    left: 0;\r\n");
      out.write("    right: 0;\r\n");
      out.write("\tbox-sizing : border-box;\r\n");
      out.write("    height: 70px;\r\n");
      out.write("    z-index: 1;\r\n");
      out.write("    margin: 0;\r\n");
      out.write("    padding: 0;\r\n");
      out.write("}\r\n");
      out.write("p.top{\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tpadding-top: 20%;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("div.login{\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tz-index: -1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input{\r\n");
      out.write("\tz-index: 1;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttext-align: left;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\tfont-size: 100%;\r\n");
      out.write("\tborder:none;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input.b24{\r\n");
      out.write("\ttop: 63%;\r\n");
      out.write("\tleft: 33%;\r\n");
      out.write("\tfont-size: 100%;\r\n");
      out.write("\twidth: 10%;\r\n");
      out.write("\theight: 9%;\r\n");
      out.write("\tborder:none;\r\n");
      out.write("\tpadding: 0%;\r\n");
      out.write("\topacity: 0;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input.b25{\r\n");
      out.write("\ttop: 63%;\r\n");
      out.write("\tleft: 45%;\r\n");
      out.write("\tfont-size: 100%;\r\n");
      out.write("\twidth: 10%;\r\n");
      out.write("\tborder:none;\r\n");
      out.write("\theight: 9%;\r\n");
      out.write("\tpadding: 0%;\r\n");
      out.write("\topacity: 0;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");

        String userID = null;
        if(session.getAttribute("userID")!=null){
            userID = (String) session.getAttribute("userID");
        }
        int pageNumber =1;
        if(request.getParameter("pageNumbe")!=null){
        	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        }
    
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"top\"></div>\r\n");
      out.write("\t\t<p class=\"top\">\r\n");
      out.write("\t\t\t<img src=\"images/NationTop.png\" style=\"max-width: 100%; height: auto;\" >\r\n");
      out.write("\t\t</p>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"login\">\r\n");
      out.write("\t\t<img src=\"images/Contents.png\" style=\"max-width: 85%; height:auto;\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("    <hr style=\"border: solid 2px #353c54; margin-top: 10;\">\r\n");
      out.write("\t\t\t<div class=\"bottom_bar\" style=\"padding-top:3%;\">\r\n");
      out.write("\t\t\t\t<a href=\"MapView.jsp\"><img src=\"images/Back.png\" style=\"max-width: 10%;height: auto; padding-left:12% ;padding-top:2px;\"></a>\r\n");
      out.write("\t\t\t\t<a href=\"NationAdd.jsp\"><img src=\"images/NationAddButton.png\" style=\"max-width: 10%;height: auto; padding-left:12% ;padding-top:2px;\"></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
