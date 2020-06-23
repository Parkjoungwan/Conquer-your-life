<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<meta http-equiv="Content-Type"
      charset="UTF-8" name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
<<<<<<< HEAD
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

=======
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
<style type="text/css">
		@font-face { 
			font-family: 'Chosunilbo_myungjo';
		 	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff'); 
		 	font-weight: normal; 
<<<<<<< HEAD
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
			width: 80%;
			height:5%;
			border:1px solid #98dfd8;
			padding:5px;
			margin-top: 5%;
			margin-left: 10%;
			font-family: 'Lobster', cursive;
			font-size: 1.3em;
		}

=======
			 font-style: normal; 
		}
		
		body{
			margin: 0px auto;
			background-color: #FFFFFF;
			box-sizing : border-box;
			font-family: Chosunilbo_myungjo;
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
		p.join{
			position: relative;
			padding-top: 30%;
			text-align: center;
		
		}
		
		footer {
					position: relative;
					padding-top: 100;
					bottom: 0;
					width: 100%;
					text-align: center;
				}

			 
		
		div>input{
			font-size: 100%;	
			width: 80%;
			height:5%;
			border:1px solid #42AD23;
			padding:5px;
			margin-top: 10%;
			margin-left: 10%;
			font-family: Chosunilbo_myungjo;
			font-size: 1.3em;
		
		}
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
		
		input.signup{
			top: 69%;
			left: 55%;
			font-size: 100%;
			width: 35%;
			border:none;
			height: 9%;
<<<<<<< HEAD
			font-family: 'Lobster', cursive;
		}
		
		input.signup{
			width: 80%;
			background-color: #98dfd8;
=======
		
		}
		
		
		input.signup{
			width: 80%;
			background-color: #42AD23;
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
			color: #FFFFFF;
			font-size: 2em;
			height: 8%;
			margin-left: 10%;
			margin-top: 15%;
			font-family: Chosunilbo_myungjo;
<<<<<<< HEAD
		}
		
=======
		
		}

>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811

</style>
</head>

<body>
<<<<<<< HEAD
		<div>
			<div class="logo">
				<img src="images/logo_3.gif" style="max-width: 50%; height: auto;" >		
			</div>

			<form method="post" action="Nickname.jsp">
			<div class="login">
				<input class="id" type="text" class="form-control" name="userID" maxlength="20" placeholder=" Id">
				<input class="pw" type="password" class="form-control" name="userPassword" maxlength="20" placeholder=" Pw">
			</div>
				<input type="submit" class="signup" value="회원가입입니다">
			</form>
		</div>
=======
<div class="top"></div>
<p class="join">
<img src="images/JoinTop.png" style="max-width: 80%; height: auto;" >
</p>


	<form method="post" action="Nickname.jsp">
	<div class="login">
		<input class="id" type="text" class="form-control" name="userID" maxlength="20" placeholder="아이디">
		<input class="pw" type="password" class="form-control" name="userPassword" maxlength="20" placeholder="비밀번호">
	</div>
		<input type="submit" class="signup" value="회원가입">
	</form>



<footer>
	<img src="images/Logo.png" style="max-width: 20%;">
</footer>
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811

</body>

</html>