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
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<title>MAP</title>
<style type="text/css">

		body{
			margin: 0px auto;
			background-color: #FFFFFF;
			box-sizing : border-box;
			font-family: 'Lobster', cursive;
		}
		
		
		div.month{
			float: left;
		}
		div.day{
			text-align: center;
			float: left;
			padding-top: 0%;
			
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
				<a href="Nation.html"><img src="images/nation.png" style="max-width: 10%;height: auto; padding-left:10% ;padding-top:2px;"></a>
				<a href="Check.html"><img src="images/check.png" style="max-width:10%; height: auto; padding-left: 14%;padding-top:3px;"></a>
				<a href="History.html"><img src="images/history.png" style="max-width: 10%; height: auto;padding-left: 12%;"></a>
				<a href="Ranking.html"><img src="images/ranking.png" style="max-width: 10%; height: auto;padding-left: 12%;"></a>
			</div>
	</body>
</html>

<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/core.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	Page.init(start);
});

var pagectx = {};
function start(usrobj){
	pagectx.usrobj = usrobj;

	var params = "id=" + usrobj.id;
	AJAX.call("jsp/feedFetch.jsp",params,function(data){
		var feeds = JSON.parse(data.trim());
		pagectx.feeds = feeds;
		console.log(feeds);
		
		var list = feeds.concat(feedList);
		generate(list);
	});
}

</script>