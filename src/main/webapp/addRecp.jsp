<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="CSS/addpatient.css"></link>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light px-5 sticky-top">
        <a href="#" class="navbar-brand">
            <img src="Images/NavBrand.jpeg" height="30" width="100" alt="HospitalManagementSystem">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item mx-3">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        PATIENT
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="addpatient.jsp">Add Patient</a></li>
                        <li><a class="dropdown-item" href="listPatient.jsp">Patient List</a></li>
                    </ul>
                </li>
                
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBilling" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        DOCTOR
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownBilling">
                        <li><a class="dropdown-item" href="addDoctor.jsp">Add Doctor</a></li>
                        <li><a class="dropdown-item" href="adminDoctorList.jsp">View Doctor</a></li>
                    </ul>
                </li>
                
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBilling" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        RECEPTIONIST
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownBilling">
                        <li><a class="dropdown-item" href="addRecp.jsp">Add Receptionist</a></li>
                        <li><a class="dropdown-item" href="adminRecpList.jsp">View Receptionist</a></li>
                    </ul>
                </li>
                
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBilling" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        WORKER
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownBilling">
                        <li><a class="dropdown-item" href="addWorker.jsp">Add Worker</a></li>
                        <li><a class="dropdown-item" href="adminWorkerList.jsp">View Worker</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
    </nav>
    
    <div class="container my-5">
    <div class="card form-container shadow">
        <div class="form-header">
            <h2>Patient Registration Form</h2>
        </div>

        <div class="card-body">
            <form action="AddRecp" method="post">
            	
                <div class="row mb-3">
                    <label for="fname" class="col-sm-3 col-form-label text-end">First Name : </label>
                    <div class="col-sm-9 pe-5">
                        <input type="text" class="form-control" id="fname" name="fname" placeholder="Enter First Name" autofocus="autofocus" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="lname" class="col-sm-3 col-form-label text-end">Last Name : </label>
                    <div class="col-sm-9 pe-5">
                        <input type="text" class="form-control" id="lname" name="lname" placeholder="Enter Last Name" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="Mobile" class="col-sm-3 col-form-label text-end">Phone : </label>
                    <div class="col-sm-9 pe-5">
                        <input type="text" class="form-control" id="Mobile" name="Mobile" placeholder="Enter Phone Number" required>
                    </div>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn submit-btn">
                        Submit <i class="fas fa-long-arrow-alt-right ms-2"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
    
    
</body>
</html>