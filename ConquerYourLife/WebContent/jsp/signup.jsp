<%@ page contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %>
<%@ page import ="core.*" %>
<% 
	request.setCharacterEncoding("UTF-8");

	String uid = request.getParameter("id");
	String upass = request.getParameter("pw");

	System.out.println(uid);
	UserDAO dao = new UserDAO();
	String code = dao.signup(uid, upass);
	
	if(code == "EX"){
		out.print("이미 가입한 회원입니다.");
	}
	else if(code == "ER"){
		out.print("회원가입 중 에러가 발생하였습니다.");
	}
	else{
		out.print("회원가입이 완료되었습니다.");
		
	}	
%>