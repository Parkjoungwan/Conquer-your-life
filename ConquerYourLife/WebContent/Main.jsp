<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width-device-width", initial-scale="1">
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	<title>ConquerYourLife</title>
	<meta http-equiv="Content-Type" charset="UTF-8" name=viewport
		content="width=device-width, initial-scale=1, user-scalable=0">
	
	<style type="text/css">
		
		body {
			margin: 0px auto;
			background-image:url("images/back_main.gif");
    		background-size: 100%;
			box-sizing: border-box;
			font-family: 'Lobster', cursive;	
		}

		div.app_name {
			position: relative;
			text-align: center;
			padding-top: 1%;
			margin-bottom: -15%;
		}
		
		div.logo {
			position: relative;
			text-align: center;
			padding-top: 3%;
			bottom: 0;
			width: 100%;
		}
		
		.start {
		    position: relative;
		    padding-top: 0px;
		    width: 100%;
		    padding-bottom: 15%;
		    text-align: center;
		    border-radius: 8%;
		}

		.button1 {
	    	position: relative;
	    	color: white;
	    	background-color: darkgray;
	    	text-align: center;
	    	border-radius: 30px;
	    	font-size: 200%;
	    	padding: 3px 3px 3px 3px;
	    	width: 50%;
	   	 	border: none;
		}

		.button1:hover   {
	    	position: relative;
	    	color: rgb(29, 202, 159);
	    	background-color: rgb(169, 250, 232);
	    	border-style: double;   
		}

	</style>
</head>
</head>
=======
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<title>ConquerYourLife</title>
	<meta http-equiv="Content-Type" charset="UTF-8" name=viewport
		content="width=device-width, initial-scale=1, user-scalable=0">
	<style type="text/css">
		body {
			margin: 0px auto;
			background-color: #FFFFFF;
			box-sizing: border-box;
		}
		div.top {
			background: #42AD23;
			position: fixed;
			top: 0;
			left: 0;
			right: 0;
			box-sizing: border-box;
			height: 50px;
			z-index: 1;
			margin: 0;
			padding: 0;
		}
		p.appname {
			position: relative;
			padding-top: 0%;
			padding-left: 15%;

		}
		footer {
			position: relative;
			padding-top: 100;
			bottom: 0;
			width: 100%;
			text-align: center;
		}
	</style>
</head>
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
<body>
    <%
        String userID = null;
        if(session.getAttribute("userID")!=null){
            userID = (String) session.getAttribute("userID");
        }
    %>
	<div>
<<<<<<< HEAD
				<div class="app_name">
					<img src="images/app_name_3.png" style="max-width: 90%; height: auto;">
				</div>
				<div class="logo">
					<img src="images/logo_3.gif" style="max-width: 90%; height: auto; " >		
				</div>
				<div class="start">
					<a href="Login.jsp">
                    	<button class="button1">START</button>
                	</a>
                </div>
=======
			<div class="top"></div>
			<div class="image">
				<p class="appname">
					<a href="javascript:void(window.open('Login.jsp', 'new', 'width=400,height=800,status=no,scrollbars=yes,menubar=no,resizable=no,'))"><img src="images/start.png" style="max-width: 90%; height: auto;"></a>
				</p>
				<footer>
					<img src="images/Logo.png" style="max-width: 20%;">
				</footer>
			</div>
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
	</div>
</body>
</html>