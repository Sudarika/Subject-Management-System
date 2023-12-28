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
	<meta charset="UTF-8">
	<meta charset="ISO-8859-1">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	<title>form</title>
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
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
	<br><br><br><br><br><br><br><br>
		<div class="fm">
		<h2>Let Us Help You </h2>
			<c:if test="${subject == null}">
			<form action="InsertServlet" method="post"></c:if>

			<caption>
				<h3>
				<c:if test="${subject != null}">Edit Subject</c:if>
				<c:if test="${subject == null}"><h3>Please Fill Out The Form Below</h3> <br></c:if>
				</h3>
			</caption>

			<c:if test="${subject != null}">
				<input type="hidden" name="id" value="<c:out value='${subject.id}' />" />
			</c:if>

			<fieldset>
				<label>Name :</label> 
				<input type="text" value="<c:out value='${subject.name}' />" name="name" required="required" >
			</fieldset>

			<fieldset>
				<label>Teacher id :</label> 
				<input type="text" value="<c:out value='${subject.teacherid}' />"  name="teacherid">
			</fieldset>

			<fieldset>
				<label>Course id :</label> 
				<input type="text" value="<c:out value='${subject.courseid}' />" name="courseid">
			</fieldset>
				
			<fieldset>
				<label>Term :</label> 
				<input type="text" value="<c:out value='${subject.term}' />"  name="term">
			</fieldset>
				
			<fieldset>
				<label>Content:</label> 
				<input type="text" value="<c:out value='${subject.content}' />" name="content">
			</fieldset>
				
			<input type="hidden" name="uid" value="${userId}">
			<button type="submit">Submit</button>
			<button type="reset" >Reset</button>
			<button type="button" style="background-color:red;"><a href="ListServlet?uid=${userId}">View Previous Details</a></button><pre class="tab1"></pre>
				
				
			</form>
				
	</div><br><br><br><br>
		
	</section>
	<!-- Hero section end -->

	
  	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul><li>Contact Info</li>
						<li>Contact Info</li>
						<li>Contact Info</li>
						<li>Contact Info</li>
						<li>Contact Info</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Graphic Design</h4>
						<ul><li>Graphic Design</li>
						<li>Graphic Design</li>
						<li>Graphic Design</li>
						<li>Graphic Design</li>
						<li>Graphic Design</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Development</h4>
						<ul><li>Development</li>
						<li>Development</li>
						<li>Development</li>
						<li>Development</li>
						<li>Development</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Newsletter</h4>
						<ul><li>Newsletter</li>
						<li>Newsletter</li>
						<li>Newsletter</li>
						<li>Newsletter</li>
						<li>Newsletter</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-warp">
				<ul class="footer-menu">
					<li><a href="#">Terms & Conditions</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
			</div>
		</div>
	</footer> 
	<!-- footer section end -->
  	
  	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	
	
<style>
.tab1 {
  	display: inline-block;
    margin-left: 500px;
}
body{
	background-color: #CBCDCD;
}
p{
	text-align: justify;
}
h2{
	color: #10C1EC;
	text-shadow: 2px 1px black;
}
h3{
	color: #09C1C1;
	text-shadow: 1px 1px black;
}
.fm {
  	border-radius: 15px;
  	background-color: #f2f2f2;
  	padding: 20px;
  	width: 60%;
  	margin-left : auto;
  	margin-right : auto;
}
button{
	border-radius: 8px;
	border: 2px solid #008CBA;
	background-color: #008CBA;
	font-size: 20px;
	padding: 5px;
	width: 220px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
button:hover {
  	background-color: #555555;
  	color: white;
  	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  	width: 220px;
}
a {
  	color: white;
}
a:hover{
	color: white;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
</style>
	
</body>
</html>