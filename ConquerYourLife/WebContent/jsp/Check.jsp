<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<title>행동체크</title>
<style type="text/css">


		body{
			margin: 0% auto;
			background-color: #98dfd8;
			box-sizing : border-box;
			font-family: 'Lobster', cursive;
		}
		
		
		ul{
			position:relative;
			width:110%;
			height:40;
			margin:3%;
			padding:0%;
			box-sizing:border-box;
		}
		
		ul li{
			display:flex;
			background: rgba(255,255,255,.5);
			font-size: 100%;
			text-align: center;
			width: 80%;
			height:40%;
			border:4px solid #98dfd8;
			margin-top: 5%;
			margin-left: 7.5%;
			font-size: 4em;
			padding: 2% 1% 1% 1%;
		}
		
		ul li span:nth-child(1){
			width:15%;
		}
		
		ul li span:nth-child(2){
			width:60%;
		}
		
		ul li span:nth-child(3){
			width:25%;
		}

		.top{
			text-align: center;
			font-size: 10em;
			margin: 7% 0% 10% 9%;	
		}
		
		.icon{
			width:40%;
		}

		.start {
		    position: relative;
		    padding-left: 5%;
		    width: 100%;
		    padding-bottom: 15%;
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
	    	margin-top: 7%;
	    	font-size: 3.5em;
	    	padding: 2% 2% 2% 2%;
	    	width: 35%;
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
<body>
    <%
        String userID = null;
        if(session.getAttribute("userID")!=null){
            userID = (String) session.getAttribute("userID");
        }
        int pageNumber =1;
        if(request.getParameter("pageNumbe")!=null){
        	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        }
    %>
    
   		<a href="MapView.jsp"><img src="images/Back_1.png" style="max-width: 10%;height: auto; padding: 4% 3% 3% 5%;"></a>
		

		<p class="top">
			Check
		</p>
		
		<ul>
				<li>
					<span class="">1</span>
					<span class="">6시 기상</span>
					<span class="">
						<input type="image" class="icon" src="images/check_2.png">
						<input type="image" class="icon" src="images/check_3.png">
					</span>
				</li>
				<li>
					<span class="">2</span>
					<span class="">운동</span>
					<span class="">
						<input type="image" class="icon" src="images/check_1.png">
						<input type="image" class="icon" src="images/check_4.png">
					</span>
				</li>
				<li>
					<span class="">3</span>
					<span class="">스트레칭</span>
				  	<span class="">
						<input type="image" class="icon" src="images/check_1.png">
						<input type="image" class="icon" src="images/check_3.png">
					</span>
				</li>
				<li>
					<span class="">4</span>
					<span class="">독서</span>
					<span class="">
						<input type="image" class="icon" src="images/check_1.png">
						<input type="image" class="icon" src="images/check_3.png">
					</span>
				</li>
			</ul>
		
				<div class="start">
					<a href="Mapview.jsp">
                    	<button class="button1">확인</button>
                	</a>
                </div>
</body>
</html>