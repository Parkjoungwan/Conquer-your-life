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
<title>행동체크</title>
<style type="text/css">


body{
	margin: 3% auto;
	background-color: #98dfd8;
	box-sizing : border-box;
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
	width: 70%;
	height:40%;
	border:4px solid #98dfd8;
	padding:2%;
	margin-top: 4%;
	margin-left: 6%;
	font-size: 3em;
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

.icon{
width:40%;
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
			<img src="images/CheckTop.png" style="max-width: 100%; height: auto;" >
		</p>
		
		<ul>
				<li>
					<span class="">1</span>
					<span class="">나는</span>
					<span class="i">
						<input type="image" class="icon" src="images/check_1.png">
						<input type="image" class="icon" src="images/check_3.png">
					</span>
				</li>
				<li>
					<span class="">2</span>
					<span class="">커서</span>
					<span class="i">
						<input type="image" class="icon" src="images/check_1.png">
						<input type="image" class="icon" src="images/check_3.png">
					</span>
				</li>
				<li>
					<span class="">3</span>
					<span class="">새가</span>
				  	<span class="i">
						<input type="image" class="icon" src="images/check_1.png">
						<input type="image" class="icon" src="images/check_3.png">
					</span>
				</li>
				<li>
					<span class="">5</span>
					<span class="">되고</span>
					<span class="i">
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