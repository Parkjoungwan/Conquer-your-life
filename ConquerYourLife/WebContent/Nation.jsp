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
<title>국가관리</title>
<style type="text/css">

		body{
			margin: 0% auto;
			background-color: #98dfd8;
			box-sizing : border-box;
			font-family: 'Lobster', cursive;
		}

		ul{
			position:relative;
			width:105%;
			height:40;
			margin:1.5%;
			padding:0%;
			box-sizing:border-box;
		}
		
		ul li{
			display:flex;
			background: rgba(255,255,255,.5);
			font-size: 100%;
			text-align: center;
			width: 80%;
			height: 80%;
			border:4px solid #98dfd8;
			margin-top: 4%;
			margin-left: 9%;
			font-size: 3.5em;
		}
		
		ul li span:nth-child(1){
			width:15%;
			background-color:#ffffff;
			padding:3.5%;
		}
		
		ul li span:nth-child(2){
			width:85%;
			padding:3.5%;
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
    <div>
		
		<a href="MapView.jsp"><img src="images/Back_1.png" style="max-width: 10%;height: auto; padding: 4% 3% 3% 5%;"></a>
    
		<p class="top">
			Nation
		</p>
		
			<ul>
				<li>
					<span class="11">1</span>
					<span class="">6시 기상</span>
				</li>
				<li>
					<span class="">2</span>
					<span class="">운동하기</span>
				</li>
				<li>
					<span class="">3</span>
					<span class="">스트레칭</span>
				</li>
				<li>
					<span class="">4</span>
					<span class="">독서</span>
				</li>

			</ul>
		
		
		<img src="images/plus_1.png" style="max-width: 10%;height: auto; padding: 7% 3% 5% 46%;">
	</div>
   


</body>
</html>