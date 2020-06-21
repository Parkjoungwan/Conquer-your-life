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
<title>연대기</title>
<style type="text/css">

body{
	margin: 0px auto;
	background-color: #FFFFFF;
	box-sizing : border-box;
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
p.top{
	position: relative;
	padding-top: 20%;
	text-align: center;

}
div.login{
	position: relative;
	text-align: center;
	z-index: -1;
}

input{
	z-index: 1;
	position: absolute;
	text-align: left;
	position: absolute;
	font-size: 100%;
	border:none;

}

input.b24{
	top: 63%;
	left: 33%;
	font-size: 100%;
	width: 10%;
	height: 9%;
	border:none;
	padding: 0%;
	opacity: 0;


}

input.b25{
	top: 63%;
	left: 45%;
	font-size: 100%;
	width: 10%;
	border:none;
	height: 9%;
	padding: 0%;
	opacity: 0;

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
    
    <div class="top"></div>
		<p class="top">
			<img src="images/HistoryTop.png" style="max-width: 100%; height: auto;" >
		</p>
		
		<div class="login">
		<img src="images/Contents.png" style="max-width: 85%; height:auto;">
		</div>
		
    <hr style="border: solid 2px #353c54; margin-top: 10;">
			<div class="bottom_bar" style="padding-top:3%;">
				<a href="MapView.jsp"><img src="images/Back.png" style="max-width: 10%;height: auto; padding-left:12% ;padding-top:2px;"></a>
			</div>

</body>
</html>