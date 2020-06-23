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
<title>랭킹</title>
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
			margin:3%;
			padding:0%;
			box-sizing:border-box;
			background: raba(0,0,0,0.1);
		}
		
		ul .bin {
			margin:7% 0% 7% 0%;
			background:#98dfd8;
		}
		
		ul li{
			display:flex;
			background: rgba(255,255,255,.5);
			font-size: 100%;
			text-align: center;
			width: 80%;
			height:10%;
			border:4px solid #98dfd8;
			padding:5px;
			margin-top: 3%;
			margin-left: 7.5%;
			font-size: 3.5em;
		}
		

		ul li span:nth-child(1){
			width:30%;
		}
		
		ul li span:nth-child(2){
			width:50%;
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
			Ranking
		</p>
		
			
		<div>
			<ul>
				<li>
					<span>1</span>
					<span>코딩삼</span>
				</li>
				<li>
					<span>2</span>
					<span>삼형제</span>
				</li>
				<li>
					<span>3</span>
					<span>형제들</span>
				</li>
				<li class="bin">
				</li>
				<li>
					<span>10</span>
					<span>들판</span>
				</li>
			</ul>
		</div>
		


</body>
</html>