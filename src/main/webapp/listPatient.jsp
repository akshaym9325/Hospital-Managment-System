<%@page import="Database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patients List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="CSS/listpatient.css"></link>

<style type="text/css">
  	th,td{
  		text-align: center;
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
                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
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
                        Billing
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownBilling">
                        <li><a class="dropdown-item" href="#">Add Bill</a></li>
                        <li><a class="dropdown-item" href="#">View Bill</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="container my-5">
    <!-- Search Bar -->
    <div class="row mb-3">
        <div class="col-md-6 mx-auto">
            <form action="" method="post" class="input-group">
                <input type="text" name="search" class="form-control" placeholder="Search Here..." autofocus="autofocus" aria-label="Search Here">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>

    <!-- Table -->
    <div class="table-responsive table-container">
        <table class="table table-bordered table-striped table-dark table-hover">
            <thead class="table-dark">
                <tr>
                    <th class="text-info">FirstName</th>
                    <th class="text-info">LastName</th>
                    <th class="text-info">Gender</th>
                    <th class="text-info">City</th>
                    <th class="text-info">Email</th>
                    <th class="text-info">Age</th>
                    <th class="text-info">Address</th>
                    <th class="text-info">Date</th>
                    <th class="text-info">Mobile</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection con = null;
                    try {
                        con = DatabaseConnection.getConnection();
                        Statement st = con.createStatement();
                        String sql = "";
                        String query = request.getParameter("search");
                        if (query != null) {
                            sql = "select * from patient where fname like '%" + query + "%' or lname like '%" + query + "%'";
                        } else {
                            sql = "select * from patient";
                        }
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td><%= rs.getString(6) %></td>
                    <td><%= rs.getString(7) %></td>
                    <td><%= rs.getString(8) %></td>
                    <td><%= rs.getString(9) %></td>
                </tr>
                <%
                        }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</div>
    
</body>
</html>