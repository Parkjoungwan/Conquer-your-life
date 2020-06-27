<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import ="core.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	FeedDAO dao = new FeedDAO();

	String code = dao.NickName(request.getParameter("Idx"), request.getParameter("Name"));
	
	if(code != "EX" && code != "ER"){
		session.setAttribute("country", code);
	}
	out.print(code);
%>
