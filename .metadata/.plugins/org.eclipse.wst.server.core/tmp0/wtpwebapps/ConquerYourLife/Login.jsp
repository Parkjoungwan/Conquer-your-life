<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
	<title>로그인</title>
	<meta http-equiv="Content-Type" charset="UTF-8" name=viewport
		content="width=device-width, initial-scale=1, user-scalable=0">
	<style type="text/css">

body{
	margin: 0px auto;
	background-color: #FFFFFF;
	box-sizing : border-box;
}


div.top{
	background: #42AD23;
    position: fixed;
	top:0;
    left: 0;
    right: 0;
	box-sizing : border-box;
    height: 70px;
    z-index: 1;
    margin: 0;
    padding: 0;
}
p.appname{
	position: relative;
	padding-top: 30%;
	padding-left: 30%;

}
div.login{
	position: relative;
	padding-top: 20%;
	text-align: center;
}
footer {
			position: relative;
			padding-top: 100;
			bottom: 0;
			width: 100%;
			text-align: center;
		}

input{
	z-index: 1;
	position: absolute;
	text-align: left;
	position: absolute;
	font-size: 100%;
	border:none;

}

input.id{
	top: 28%;
	left: 36%;
	font-size: 100%;
	width: 35%;
	height: 7%;
}

input.pw{
	top: 41%;
	left: 36%;
	font-size: 100%;
	width: 35%;
	height: 7%;
}

input.login{
	top: 60%;
	left: 55%;
	font-size: 100%;
	width: 35%;
	height: 9%;
	border:none;
	opacity: 0;


}

input.signup{
	top: 73%;
	left: 55%;
	font-size: 100%;
	width: 35%;
	border:none;
	height: 9%;
	opacity: 0;

}


</style>
</head>

<body>
	<%
		String userID = null;
		if(session.getAttribute("userID")!=null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID!=null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다.')");
			script.println("location.href='day.jsp'");
			script.println("</script>");
		}
		%>
	<div class="top"></div>
	<p class="appname">
		<img src="images/Title.png" style="max-width: 80%; height: auto;">
	</p>
	<div class="login">
		<img src="images/LoginJoinButton.png" style="max-width: 85%; height:auto;">
		<form method="post" action="MapView.jsp">
				<input class="id" type="text" class="form-control" name="userID" maxlength="20">
				<input class="pw" type="password" class="form-control" name="userPassword" maxlength="20">
				<input class="login" class="form-control" type="submit">
		</form>
		<a href="Join.jsp"><input class="signup" type="button" name="signup"></a>
		<div></div>
		<footer>
			<img src="images/Logo.png" style="max-width: 20%;">
		</footer>
	</div>
</body>

</html>