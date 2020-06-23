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
<title>국가관리</title>
<style type="text/css">

body{
<<<<<<< HEAD
	margin: 3% auto;
	background-color: #98dfd8;
=======
	margin: 0px auto;
	background-color: #FFFFFF;
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
	box-sizing : border-box;
}


<<<<<<< HEAD
ul{
	position:relative;
	width:120%;
	height:40;
	margin:1%;
	padding:0%;
	box-sizing:border-box;
}

ul li{
	display:flex;
	background: rgba(255,255,255,.5);
	background-color: #fa8;
	font-size: 100%;
	text-align: center;
	width: 80%;
	height: 80%;
	border:4px solid #98dfd8;
	padding:6%;
	margin-top: 4%;
	margin-left: 6%;
	font-size: 3em;
}

ul li span:nth-child(1){
	width:15%;
	background-color:#ffffff;
}

ul li span:nth-child(2){
	width:60%;
}

ul li span:nth-child(3){
	width:25%;
=======
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

>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
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
<<<<<<< HEAD
    <div>
		
		<a href="MapView.jsp"><img src="images/Back_1.png" style="max-width: 10%;height: auto; padding: 4% 3% 3% 5%;"></a>
    
=======
    
    <div class="top"></div>
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811
		<p class="top">
			<img src="images/NationTop.png" style="max-width: 100%; height: auto;" >
		</p>
		
<<<<<<< HEAD
			<ul>
				<li>
					<span class="11">1</span>
					<span class="">나는</span>
				</li>
				<li>
					<span class="">2</span>
					<span class="">커서</span>
				</li>
				<li>
					<span class="">3</span>
					<span class="">새가</span>
				</li>
				<li>
					<span class="">5</span>
					<span class="">되고</span>
				</li>

			</ul>
		
		<img src="images/plus_1.png" style="max-width: 10%;height: auto; padding: 10% 3% 5% 52%;">
	</div>
   

=======
		<div class="login">
		<img src="images/Contents.png" style="max-width: 85%; height:auto;">
		</div>
		
    <hr style="border: solid 2px #353c54; margin-top: 10;">
			<div class="bottom_bar" style="padding-top:3%;">
				<a href="MapView.jsp"><img src="images/Back.png" style="max-width: 10%;height: auto; padding-left:12% ;padding-top:2px;"></a>
				<a href="NationAdd.jsp"><img src="images/NationAddButton.png" style="max-width: 10%;height: auto; padding-left:12% ;padding-top:2px;"></a>
			</div>
>>>>>>> 42e4fcea7d96af7a11053772ca35045067470811

</body>
</html>