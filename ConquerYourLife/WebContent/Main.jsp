<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width-device-width", initial-scale="1">
	
	<title>ConquerYourLife</title>
	<meta http-equiv="Content-Type" charset="UTF-8" name=viewport
		content="width=device-width, initial-scale=1, user-scalable=0">
	
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	
	<style type="text/css">
		
		body {
			margin: 0px auto;
			background-image:url("images/back_main_1.gif");
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
			margin-bottom: -4%;
			width: 100%;
		}
		
		.start {
			font-family: 'Lobster', cursive;
		    position: relative;
		    padding-top: 0px;
		   	padding-bottom: 3%;
		    width: 100%;
		    text-align: center;
		    border-radius: 8%;
		}

		.button1 {
			font-family: 'Lobster', cursive;
	    	position: relative;
	    	color: white;
	    	background-color: darkgray;
	    	text-align: center;
	    	border-radius: 30px;
	    	font-size: 200%;
	    	padding: 3px 3px 0px 3px;
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
<body>
    <%
        String userID = null;
        if(session.getAttribute("userID")!=null){
            userID = (String) session.getAttribute("userID");
        }
    %>
    
		<div>
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
		</div>
	
</body>
</html>