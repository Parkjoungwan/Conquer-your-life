<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<meta http-equiv="Content-Type"
      charset="UTF-8" name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

<style type="text/css">
		@font-face { 
			font-family: 'Chosunilbo_myungjo';
		 	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff'); 
		 	font-weight: normal; 
			 font-style: normal;  
		}
		
		body{
			font-family: 'Lobster', cursive;
			margin: 0px auto;
			background-color: #FFFFFF;
			box-sizing : border-box;
			font-family: 'Lobster', cursive;
		}
		
		div.logo {
			position: relative;
			text-align: center;
			padding-top: 10%;
			padding-bottom:-10%;
			width: 100%;
			margin-bottom: 5%;
		}
		
	 	div>input{
			font-size: 100%;	
			width: 77%;
			height:1%;
			border:1px solid #98dfd8;
			padding:5px;
			margin-top: 3%;
			margin-left: 10%;
			font-family: 'Lobster', cursive;
			font-size: 1.4em;
		}

		
		input.signup{
			top: 50%;
			left: 55%;
			font-size: 100%;
			border:none;
			height: 9%;
		    font-family: 'Lobster', cursive;
			width: 80%;
			background-color: #98dfd8;
			color: #FFFFFF;
			font-size: 1.4em;
			height: 8%;
			margin-left: 10%;
			margin-top: 13%;
			padding:2% 0 2% 0;
			font-family: Chosunilbo_myungjo;
		}
		


</style>
</head>

<body>
		<div>
			<div class="logo">
				<img src="images/logo_3.gif" style="max-width: 50%; height: auto;" >		
			</div>

			<form method="post" action="jsp/signup.jsp">
			<div class="">
				<input name="id" type="text" class="form-control" maxlength="20" placeholder=" Id">
				<input name="pw" type="password" class="form-control" maxlength="20" placeholder=" Pw">
			</div>
				<input type="submit" class="signup" value="회원가입">
			</form>
		</div>

</body>

</html>