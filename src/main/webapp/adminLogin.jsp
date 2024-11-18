<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management System - Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="CSS/adminLogin.css" />
    
</head>
<body>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-md navbar-light bg-light px-5 sticky-top">
        <a href="index.jsp" class="navbar-brand"> 
            <img src="Images/NavBrand.jpeg" height="30" width="100" alt="HospitalManagementSystem">
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto" style="margin-right: 30px;">
                <a class="nav-link" href="index.jsp">Home</a>
                <a class="nav-link" href="adminLogin.jsp">Admin</a>
            </div>
        </div>
    </nav>

    <!-- Heading -->
    <div class="text-center mt-4">
        <h1 class="heading">Hospital Management System</h1>
    </div>

    <!-- Sign in Form -->
    <section class="d-flex justify-content-center mt-5">
        <div class="signin-container col-lg-6 col-md-8 mx-auto p-5">
            <div class="row">
                <div class="col-6 d-flex flex-column align-items-center justify-content-center">
                    <img src="Images/signin-image.jpg" alt="sign up image" class="img-fluid mb-3" style="width: 80%; height: 100%;">
                    <a href="adminRegister.jsp" class="account">Create an account</a>
                </div>

                <div class="col-6">
                    <h2 class="text-center mb-4">Sign in</h2>
                    <form action="AdminLogin" method="post" id="login-form">
                        <div class="mb-4">
                            <input type="text" name="uname" id="uname" placeholder="User Name" class="form-control" />
                        </div>
                        <div class="mb-4">
                            <input type="password" name="upass" id="upass" placeholder="Password" class="form-control" />
                        </div>
                        <div class="mb-4 form-check">
                            <input type="checkbox" name="remember-me" id="remember-me" class="form-check-input" />
                            <label for="remember-me" class="form-check-label">Remember me</label>
                        </div>
                        <div class="d-grid">
                            <input type="submit" name="signin" id="signin" class="btn btn-primary" value="Log in" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</body>
</html>
