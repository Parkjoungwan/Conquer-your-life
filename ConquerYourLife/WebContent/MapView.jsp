<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
<title>MAP</title>
<style type="text/css">

		body{
			margin: 0px auto;
			background-color: #FFFFFF;
			box-sizing : border-box;
		}
		
		
		div.month{
			float: left;
		}
		div.day{
			text-align: center;
			float: left;
			padding-top: 10%;
			
		}
</style>
</head>
	<body>

			<div class="month" style="float: left; border: 0; padding-top: 25%;" >
				<img src="images/MapTop.png" style="max-width: 100%; height: auto; padding-right: 10%;">
				
			</div>
			<hr style="border: solid 2px #353c54; margin-top: 10;">
		<div class="day">
			<img src="images/Contents.png" style="max-width: 100%; height: auto; ">
		</div>
        
			<hr style="border: solid 2px #353c54; margin-top: 10;">
			<div class="bottom_bar" style="padding-top:0%; padding-bottom:2%">
				<a href="Nation.jsp"><img src="images/nation.png" style="max-width: 10%;height: auto; padding-left:10% ;padding-top:2px;"></a>
				<a href="Check.jsp"><img src="images/check.png" style="max-width:10%; height: auto; padding-left: 14%;padding-top:3px;"></a>
				<a href="History.jsp"><img src="images/history.png" style="max-width: 10%; height: auto;padding-left: 12%;"></a>
				<a href="Ranking.jsp"><img src="images/ranking.png" style="max-width: 10%; height: auto;padding-left: 12%;"></a>
			</div>
	</body>
</html>