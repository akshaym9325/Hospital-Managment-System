		<%
			HttpSession sess = request.getSession(false);
		
			String user = (String) sess.getAttribute("Crntadmin");
			
			if(user!=null) {
			
		%>


<%@page import="Database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="CSS/adminHome.css"></link>

<style type="text/css">

.card{
	border: 1px solid white;
	transition: transform 0.3s;
}

.card:hover{
	transform : scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}
</style>

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
             <ul class="navbar-nav">
            	<li class="nav-item mx-3">
                    <a class="nav-link text-danger" href="AdminLogout?user=<%=user %>">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <%
    	Connection con = null;
    %>
    
    <%
	    try {
	        con = DatabaseConnection.getConnection();
	        Statement st = (Statement) con.createStatement();
	        String query = "select count(*) from patient";
	        ResultSet rs = st.executeQuery(query);
	        while (rs.next()) {
	        int patient = rs.getInt(1);
	%>
			<div class="container-fluid row mb-3">
			    <div class="col-xl-3 col-lg-6 mt-4">
			        <div class="card bg-success text-white">
			            <div class="card-body text-center">
			                <i class="fa fa-user fa-5x"></i>
			                <h6 class="text-uppercase"><a href="listPatient.jsp" class="text-white">Patient</a></h6>
			                <h1 class="display-1"><%= patient %></h1>
			            </div>
			        </div>
			    </div>
    <%
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	%>
	<%
	    try {
	        con = DatabaseConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement("select count(*) from doctor");
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	        int doctor = rs.getInt(1);
	%>
			    <div class="col-xl-3 col-lg-6 mt-4">
			        <div class="card bg-danger text-white">
			            <div class="card-body text-center">
			                <i class="fa fa-user fa-5x"></i>
			                <h6 class="text-uppercase"><a href="adminDoctorList.jsp" class="text-white">Doctor</a></h6>
			                <h1 class="display-1"><%= doctor %></h1>
			            </div>
			        </div>
			    </div>
    <%
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	%>
	<%
	    try {
	        con = DatabaseConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement("select count(*) from recp");
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	        int recp = rs.getInt(1);
	%>
			    <div class="col-xl-3 col-lg-6 mt-4">
			        <div class="card bg-info text-white">
			            <div class="card-body text-center">
			                <i class="fa fa-user fa-5x"></i>
			                <h6 class="text-uppercase"><a href="adminRecpList.jsp" class="text-white">Receptionist</a></h6>
			                <h1 class="display-1"><%= recp %></h1>
			            </div>
			        </div>
			    </div>
    <%
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
	%>
	<%
	    try {
	        con = DatabaseConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement("select count(*) from worker");
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	        int worker = rs.getInt(1);
	%>
			    <div class="col-xl-3 col-lg-6 mt-4">
			        <div class="card bg-warning text-white">
			            <div class="card-body text-center">
			                <i class="fa fa-user fa-5x"></i>
			                <h6 class="text-uppercase"><a href="adminWorkerList.jsp" class="text-white">Worker</a></h6>
			                <h1 class="display-1"><%= worker %></h1>
			            </div>
			        </div>
			    </div>
			</div>
	<%
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	%>
    
    
</body>
</html>

<%
			}
			else{
				response.sendRedirect("adminLogin.jsp");
			}
%>