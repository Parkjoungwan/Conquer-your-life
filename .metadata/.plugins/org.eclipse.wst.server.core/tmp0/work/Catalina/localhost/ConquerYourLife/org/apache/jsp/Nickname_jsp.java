/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2020-06-17 05:54:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Nickname_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>국가이름</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\"\r\n");
      out.write("      charset=\"UTF-8\" name=viewport content=\"width=device-width, initial-scale=1, user-scalable=0\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t\t@font-face { \r\n");
      out.write("\t\t\tfont-family: 'Chosunilbo_myungjo';\r\n");
      out.write("\t\t \tsrc: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff'); \r\n");
      out.write("\t\t \tfont-weight: normal; \r\n");
      out.write("\t\t\t font-style: normal; \r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tbody{\r\n");
      out.write("\t\t\tmargin: 0px auto;\r\n");
      out.write("\t\t\tbackground-color: #FFFFFF;\r\n");
      out.write("\t\t\tbox-sizing : border-box;\r\n");
      out.write("\t\t\tfont-family: Chosunilbo_myungjo;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tdiv.top{\r\n");
      out.write("\t\t\tbackground: #42AD23;\r\n");
      out.write("\t\t    position: fixed;\r\n");
      out.write("\t\t\ttop:0;\r\n");
      out.write("\t\t    left: 0;\r\n");
      out.write("\t\t    right: 0;\r\n");
      out.write("\t\t\tbox-sizing : border-box;\r\n");
      out.write("\t\t    height: 70px;\r\n");
      out.write("\t\t    z-index: 1;\r\n");
      out.write("\t\t    margin: 0;\r\n");
      out.write("\t\t    padding: 0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tp.join{\r\n");
      out.write("\t\t\tposition: relative;\r\n");
      out.write("\t\t\tpadding-top: 30%;\r\n");
      out.write("\t\t\ttext-align: center;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tfooter{\r\n");
      out.write("\t\t\tposition: relative; \r\n");
      out.write("\t\t\tpadding-top: 70;\r\n");
      out.write("\t\t\tbottom: 0; \r\n");
      out.write("\t\t\twidth: 100%;\r\n");
      out.write("\t\t\ttext-align: center;\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\r\n");
      out.write("\t\tdiv>input{\r\n");
      out.write("\t\t\tfont-size: 100%;\t\r\n");
      out.write("\t\t\twidth: 80%;\r\n");
      out.write("\t\t\theight:5%;\r\n");
      out.write("\t\t\tborder:1px solid #42AD23;\r\n");
      out.write("\t\t\tpadding:5px;\r\n");
      out.write("\t\t\tmargin-top: 10%;\r\n");
      out.write("\t\t\tmargin-left: 10%;\r\n");
      out.write("\t\t\tfont-family: Chosunilbo_myungjo;\r\n");
      out.write("\t\t\tfont-size: 1.3em;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tinput.signup{\r\n");
      out.write("\t\t\ttop: 69%;\r\n");
      out.write("\t\t\tleft: 55%;\r\n");
      out.write("\t\t\tfont-size: 100%;\r\n");
      out.write("\t\t\twidth: 35%;\r\n");
      out.write("\t\t\tborder:none;\r\n");
      out.write("\t\t\theight: 9%;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tinput.signup{\r\n");
      out.write("\t\t\twidth: 80%;\r\n");
      out.write("\t\t\tbackground-color: #42AD23;\r\n");
      out.write("\t\t\tcolor: #FFFFFF;\r\n");
      out.write("\t\t\tfont-size: 2em;\r\n");
      out.write("\t\t\theight: 8%;\r\n");
      out.write("\t\t\tmargin-left: 10%;\r\n");
      out.write("\t\t\tmargin-top: 15%;\r\n");
      out.write("\t\t\tfont-family: Chosunilbo_myungjo;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("-ㄴ\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"top\"></div>\r\n");
      out.write("<p class=\"join\">\r\n");
      out.write("<img src=\"images/makenick.png\" style=\"max-width: 80%; height: auto;\" >\r\n");
      out.write("</p>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<form method=\"post\" action=\"MapView.jsp\">\r\n");
      out.write("\t<div class=\"login\">\r\n");
      out.write("\t\t<input class=\"id\" type=\"text\" class=\"form-control\" name=\"userID\" maxlength=\"20\" placeholder=\"닉네임\">\r\n");
      out.write("\t\t</select>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t<input type=\"submit\" class=\"signup\" value=\"닉네임생성\">\r\n");
      out.write("\t</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
