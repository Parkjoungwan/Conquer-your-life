<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import ="core.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	String sid = (String) session.getAttribute("usrobj");
	if(sid != null)
	{
		out.print(sid);
		return ;
	}

	String uid = request.getParameter("id");
	String upass = request.getParameter("pw");

	System.out.println(upass);
	UserDAO dao = new UserDAO();
	String code = dao.login(uid, upass);
	
	if(code != "NA" && code != "PS"){
		session.setAttribute("usrobj", code);
	}
	out.print(code);
%>
