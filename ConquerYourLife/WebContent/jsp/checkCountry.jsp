<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import ="core.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	String uid = request.getParameter("id");

	String sid = (String) session.getAttribute("country");
	if(sid != null)
	{
		response.sendRedirect("../MapView.html");
	}
	
	FeedDAO dao = new FeedDAO();
	String code = dao.getCountry(Integer.parseInt(uid));
	
	if(code == "NA"){
		response.sendRedirect("../Nickname.html");
	}
	else {
		session.setAttribute("country", code);
		response.sendRedirect("../MapView.html");
	}
%>
