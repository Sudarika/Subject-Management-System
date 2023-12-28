<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	<meta charset="UTF-8">
	<title>Login</title>
</head>
<body>
	<form action="LoginServlet" method="post">
	<div class="w-50 ms-5">
	<h3 align="center">Login</h3>
	
	<div class="mb-3">
  		<label for="exampleFormControlInput1" class="form-label">User Name</label>
  		<input type="text" name="uid" class="form-control" id="exampleFormControlInput1" placeholder="Username">
	</div>

	<div class="mb-3">
  		<label for="exampleFormControlInput1" class="form-label">Password</label>
  		<input type="password" name="pwd" class="form-control" id="exampleFormControlInput1" placeholder="Password">
	</div>
  
  	<div class="" align="center">
    	<button class="btn btn-primary" type="submit">Login</button>
  	</div>
	</div>
</form>

</body>
</html>