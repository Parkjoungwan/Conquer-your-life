<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>지도이름</title>
<meta http-equiv="Content-Type"
      charset="UTF-8" name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
<style type="text/css">
		@font-face { 
			font-family: 'Chosunilbo_myungjo';
		 	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff'); 
		 	font-weight: normal; 
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
			border:1px solid #42AD23;
			padding:5px;
			margin-top: 10%;
			margin-left: 10%;
			font-family: Chosunilbo_myungjo;
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
			background-color: #42AD23;
			color: #FFFFFF;
			font-size: 2em;
			height: 8%;
			margin-left: 10%;
			margin-top: 15%;
			font-family: Chosunilbo_myungjo;
		
		}
-ㄴ

</style>
</head>

<body>
<div class="top"></div>
<p class="join">
<img src="images/makenick.png" style="max-width: 80%; height: auto;" >
</p>


	<form method="post" action="MapView.jsp">
	<div class="login">
		<input class="id" type="text" class="form-control" name="userID" maxlength="20" placeholder="닉네임">
		</select>
	</div>
		<input type="submit" class="signup" value="닉네임생성">
	</form>





</body>

</html>