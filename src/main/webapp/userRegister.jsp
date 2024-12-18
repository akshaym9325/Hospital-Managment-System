<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
	body{
		background-image: url("Images/Medical.jpg");
        background-color: #cccccc;
	}
</style>

</head>
<body>
	
	<!-- Navigation bar -->
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light px-5 sticky-top">
            <a href="#" class="navbar-brand"> <img src="Images/NavBrand.jpeg"
                                                   height="30" width="100" alt="HospitalManagementSystem">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item active mx-3">
                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown mx-3">
			          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            ADMIN
			          </a>
			          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <li><a class="dropdown-item" href="adminRegister.jsp">Register</a></li>
			            <li><a class="dropdown-item" href="adminLogin.jsp">Login</a></li>
			          </ul>
        			</li>
                </ul>
            </div>
      </nav>
      
      <!-- Heading -->
      
		<div class="text-center">
				<h1>
					<b class="text-white heading">Hospital Management System</b>
				</h1>
		</div>
      
      <!-- Register form -->
      
      <div class="container-fluid d-flex mt-5 ps-5 myForm">
	    <div class="card p-4 shadow" style="max-width: 400px; width: 100%;">
	      <h3 class="text-center mb-4">USER REGISTATION</h3>
		      <form method="post" action="UserRegister">
		        <div class="mb-3">
		          <input type="text" class="form-control" name="username" placeholder="Username">
		        </div>
		        <div class="mb-3">
		          <input type="password" class="form-control" name="password" placeholder="Password">
		        </div>
		        <div class="mb-3">
		          <input type="password" class="form-control" name="repassword" placeholder="Password">
		        </div>
		        <button type="submit" class="btn btn-primary w-100">REGISTER</button>
		      </form>
	      <hr>
		      <div class="" id="formFooter">
		          <a class="d-flex justify-content-center text-decoration-none" href="index.jsp">Login</a>
		      </div>
	    </div>
	</div>
</body>
</html>