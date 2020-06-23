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
<title>연대기</title>
<style type="text/css">

		body{
			margin: 0% auto;
			background-color: #98dfd8;
			box-sizing : border-box;
			font-family: 'Lobster', cursive;
		}
		
		ul{
			position:relative;
			width:100%;
			height: auto;
			margin-top:10%;
			margin-left: 7.5%;
			padding:0%;
			box-sizing:border-box;
		}
		
		ul li{
			display:flex;
			background: rgba(255,255,255,.5);
			font-size: 100%;
			text-align: center;
			width: 90%;
			height: 80%;
			margin-top: 0%;
			margin-left: 0%;
			font-size: 4em;
		}
		
		ul .name_line{
			display:flex;
			background: rgba(255,255,255,.5);
			font-size: 100%;
			text-align: center;
			width: 90%;
			height: 80%;
			margin-top: 0%;
			margin-left: 0%;
			margin-bottom: 3%;
			font-size: 2.5em;
		}
		
		ul li span:nth-child(1){
			width:17.5%;
			background-color:#ffffff;
			padding:3%;
		}
		ul li span:nth-child(2){
			width:26.5%;
				padding:3%;
		}
		ul li span:nth-child(3){
			width:26.5%;
				padding:3%;
		}
		ul li span:nth-child(4){
			width:26.5%;
				padding:3%;
				}
				
		.top{
			text-align: center;
			font-size: 10em;
			margin: 7% 0% 10% 9%;	
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
			History
		</p>
		
			<ul>
				<li class="name_line">
					<span class="first_line" style="background:#98dfd8;"> </span>
					<span class="">운동하기</span>
					<span class="">스트레칭</span>
					<span class="">독서</span>
				</li>
				<li>
					<span class="">4월</span>
					<span class="">1</span>
					<span class=""></span>
					<span class="">3</span>
				</li>
				<li>
					<span class="">5월</span>
					<span class="">1</span>
					<span class="">2</span>
					<span class="">3</span>
				<li>
					<span class="">6월</span>
					<span class="">1</span>
					<span class="">2</span>
					<span class=""></span>
				</li>
				<li>
					<span class="">7월</span>
					<span class=""></span>
					<span class=""></span>
					<span class=""></span>
						
				</li>
				<li>
					<span class="">8월</span>
					<span class=""></span>
					<span class=""></span>
					<span class=""></span>
				</li>
				<li>
					<span class="">9월</span>
					<span class=""></span>
					<span class=""></span>
					<span class=""></span>
				</li>
				<li>
					<span class="">10월</span>
					<span class=""></span>
					<span class=""></span>
					<span class=""></span>
				</li>
				<li>
					<span class="">11월</span>
					<span class=""></span>
					<span class=""></span>
					<span class=""></span>
				</li>
				<li>
					<span class="">12월</span>
					<span class=""></span>
					<span class=""></span>
					<span class=""></span>
				</li>
				

			</ul>
		
</body>
</html>