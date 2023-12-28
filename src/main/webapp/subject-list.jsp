<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 	String userName,userId;
    	if ((String)session.getAttribute("userName") == null){
    		userName = "not Loggedin";
    		userId = "NULL";
    	}else{
    		userName = (String)session.getAttribute("userName");
    		userId = (String)session.getAttribute("userId");
    	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>

	<title>Subject List</title>
	
</head>

<body>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/logo.png" alt="">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<a href="login.jsp" class="site-btn header-btn">Login</a>
					
        			
					<nav class="main-menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="#">About us</a></li>
							<li><a href="subject-form.jsp">Subjects</a></li>
							<li><a href="blog.html">News</a></li>
							<li><a href="contact.html">Contact</a></li><br>
							<li><a style="color:white;">User ID : ${userId}</a></li>
							<li><a style="color:white;">User Name : ${userName} </a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->
	
	<!-- Hero section -->
	<section class="hero-section set-bg">
	<br><br><br><br><br><br><br><br>

	<div class="fm">
	<h2>Subject Information</h2><br>
	
		<c:forEach var="subject" items="${listSubject}">
			<table style="width:1000px">
			<tr>
				<th class="thead">subject ID</th>
				<td class="tbody"><c:out value="${subject.id}" /></td>
			</tr>
			<tr>
				<th class="thead">Name</th>
				<td class="tbody"><c:out value="${subject.name}" /></td>
			</tr>
			<tr>
				<th class="thead">teacher id</th>
				<td class="tbody"><c:out value="${subject.teacherid}" /></td>
			</tr>
			<tr>
				<th class="thead">course id</th>
				<td class="tbody"><c:out value="${subject.courseid}" /></td>
			</tr>
			<tr>
				<th class="thead">term</th>
				<td class="tbody"><c:out value="${subject.term}" /></td>
			</tr>
			<tr>
				<th class="thead">Content</th>
				<td class="tbody"><c:out value="${subject.content}" /></td>
			</tr>
			<tr>
				<th class="thead">Actions</th>
				<td class="tbody"><a href="ShowEdit?id=<c:out value='${subject.id}' />">Edit</a>
				&nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="DeleteServlet?id=<c:out value='${subject.id}' />">Delete</a></td>
			</tr>
			</table><br><br>
		</c:forEach>
		<div class="" style="text-align:center;">
			<a href="subject-form.jsp" class="btn">add Another subject</a>
		</div>
		<br>
	</div><br><br>
	
	</section>

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	
<style>
.tbody{
	text-align:left;
	background-color:#B3B6B6;
	color:black;
}
.thead{
	text-align:left;
	width:30%;
	background-color:#12D6FE;
	color:black;
}
th{
  	border: 13px solid black;
}
h2{
	text-align: center;
}
h3{
	margin-left: 1100px;
}
body {
  	font-family: Arial, Helvetica, sans-serif;
  	background-color: #24ABD0;
}
.navbar {
  	overflow: hidden;
  	background-color: #333;
}
.navbar a {
  	float: left;
  	font-size: 16px;
  	color: white;
  	text-align: center;
  	padding: 14px 16px;
  	text-decoration: none;
}
.navbar a:hover, .dropdown:hover .dropbtn {
  	background-color: red;
}
table, th, td {
  	border:1px solid black;
  	border-collapse: collapse;
  	padding: 15px;
  	text-align: center;
  	background-color: #D6EEEE;
  	margin-left: auto;
  	margin-right: auto;
}
a {
  	color: #E80F0F;
  	font-weight: bold;
}
.btn{
	align:center;
	border-radius: 8px;
	border: 2px solid #008CBA;
	background-color: #17CAAF;
	font-size: 20px;
	padding: 15px;
	width: 250px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>		
	
</body>
</html>