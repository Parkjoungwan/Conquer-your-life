<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<title>국가이름</title>
<meta http-equiv="Content-Type"
      charset="UTF-8" name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">


=======
<title>지도이름</title>
<meta http-equiv="Content-Type"
      charset="UTF-8" name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
<style type="text/css">
		@font-face { 
			font-family: 'Chosunilbo_myungjo';
		 	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff'); 
		 	font-weight: normal; 
			 font-style: normal; 
		}
		
		body{
<<<<<<< HEAD
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
		}


=======
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
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
		p.join{
			position: relative;
			padding-top: 30%;
			text-align: center;
		
		}
		
		footer{
			position: relative; 
			padding-top: 70;
			bottom: 0; 
			width: 100%;
			text-align: center;
			 }
			 
		
		div>input{
			font-size: 100%;	
			width: 80%;
			height:5%;
<<<<<<< HEAD
			border:1px solid #98dfd8;
			padding:5px;
			margin-top: 10%;
			margin-left: 10%;
			font-family: 'Lobster', cursive;
=======
			border:1px solid #42AD23;
			padding:5px;
			margin-top: 10%;
			margin-left: 10%;
			font-family: Chosunilbo_myungjo;
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
			font-size: 1.3em;
		
		}
		
		input.signup{
			top: 69%;
			left: 55%;
			font-size: 100%;
			width: 35%;
			border:none;
			height: 9%;
		
		}
		
		
		input.signup{
			width: 80%;
<<<<<<< HEAD
			background-color: #98dfd8;
=======
			background-color: #42AD23;
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
			color: #FFFFFF;
			font-size: 2em;
			height: 8%;
			margin-left: 10%;
			margin-top: 15%;
<<<<<<< HEAD
			font-family: 'Lobster', cursive;
=======
			font-family: Chosunilbo_myungjo;
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
		
		}
-ㄴ

</style>
</head>

<body>
<<<<<<< HEAD
			<div class="logo">
				<img src="images/logo_3.gif" style="max-width: 50%; height: auto;" >		
			</div>

	<form method="post" action="MapView.jsp">
	<div class="login">
		<input class="id" type="text" class="form-control" name="userID" maxlength="20" placeholder="대륙 이름을 정해주세요.">
=======
<div class="top"></div>
<p class="join">
<img src="images/makenick.png" style="max-width: 80%; height: auto;" >
</p>


	<form method="post" action="MapView.jsp">
	<div class="login">
		<input class="id" type="text" class="form-control" name="userID" maxlength="20" placeholder="닉네임">
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
		</select>
	</div>
		<input type="submit" class="signup" value="닉네임생성">
	</form>





</body>

</html>