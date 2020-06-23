<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
	<title>로그인</title>
	<meta http-equiv="Content-Type" charset="UTF-8" name=viewportcontent="width=device-width, initial-scale=1, user-scalable=0">
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	
	
	<style type="text/css">
		@font-face { 
			font-family: 'Chosunilbo_myungjo';
		 	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff'); 
		 	font-weight: normal; 
			 font-style: normal;  
		}


		body {
			margin: 0px auto;
			box-sizing: border-box;
 			font-family: 'Lobster', cursive;
		}

		div.app_name {
			position: relative;
			text-align: center;
			padding-top: 1%;
			margin-bottom: -15%;
		}

	
			div.login{
			position: relative;
			padding-top: 13%;
			text-align: center;
		}

		
		input{
			position: absolute;
			text-align: left;
			position: absolute;
			border:none;
		}
		
		input.id, input.pw{
			top: 15%;
			left: 20%;
			font-size: 100%;
			width: 52%;
			height:10%;
			border:4px solid #98dfd8;
			padding:7px;
			margin-top: 10%;
			margin-left: 10%;
			font-family: 'Lobster', cursive;
			font-size: 3em;
		}
		
		input.pw{
			top: 42%;
			left: 20%;

		}
		
		input.login{
			top: 85%;
			left: 18%;
		}
		
		input.signup{
			top: 85%;
			left: 57%;
		}
		
		input.signup, input.login{
			text-align: center;
			font-size: 100%;
			font-size: 3em;
			width: 25%;
			height: 16%;
			border:none;
			font-family: 'Lobster', cursive;
			background-color: #98dfd8;
			color: #FFFFFF;
			margin-left: 0%;
			margin-top: 0%;
		}
		
		footer {
			position: relative;
			padding-top: 10%;
			bottom: 0;
			width: 100%;
			text-align: center;

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
	<div>
		<div class="app_name">
					<img src="images/app_name_3.png" style="max-width: 90%; height: auto;">
		</div>
		<div class="login">
			<img src="images/LoginJoinButton.png" style="max-width: 85%; height:auto;">
				<form method="post" action="MapView.jsp">
						<input class="id" type="text" class="form-control" name="userID" maxlength="20">
						<input class="pw" type="password" class="form-control" name="userPassword" maxlength="20">
						<input class="login" class="form-control" type="submit" value="Login">
				</form>	
		<a href="Join.jsp"><input class="signup" type="button" name="signup" value="Join"></a>
		</div>
			<footer>
				<img src="images/logo_3.gif" style="max-width: 20%;">
			</footer>
	</div>
	
</body>

</html>