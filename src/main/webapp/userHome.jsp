		<%
			HttpSession sess = request.getSession(false);
		
			String user = (String) sess.getAttribute("Crntuser");
			
			if(user!=null) {
			
		%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        body {
            background-image: url("Images/Medical.jpg");
            background-color: #cccccc;
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
                    <a class="nav-link" href="index.html">Home</a>
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
            <ul class="navbar-nav">
            	<li class="nav-item mx-3">
                    <a class="nav-link text-danger" href="UserLogout?user=<%=user %>">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</body>
</html>

<%
			}
			else{
				response.sendRedirect("index.jsp");
			}
%>
