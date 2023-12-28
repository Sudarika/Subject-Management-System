<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<html lang="en">
<head>
	<title>Index </title>
</head>

<body>
	
	<h2><div>
     	<p>User ID : ${userId}</p>
        <p>User Name : ${userName} </p>
    </div>
            
 	<ul>
     	<li><a href="index.jsp">Home</a></li>
        <li><a href="subject-form.jsp">subject</a></li>
        <li><a href="login.jsp">Login</a></li>
     </ul>
  	</h2>
  		
</body>
</html>