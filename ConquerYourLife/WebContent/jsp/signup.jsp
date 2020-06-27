<%@ page contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %>
<%@ page import ="core.*" %>
<% 
	request.setCharacterEncoding("UTF-8");

	UserDAO dao = new UserDAO();
	
	String code = dao.signup(request.getParameter("id"), request.getParameter("pw"));
	
	if(code != "NA" && code != "PS"){
		session.setAttribute("country", code);
	}
	out.print(code);
%>