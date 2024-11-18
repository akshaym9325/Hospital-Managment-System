package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	response.setContentType("text/html");
    	 
        PrintWriter out = response.getWriter();
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            Date todaysDate = new Date();
            DateFormat df2 = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
            String DateAndTime = df2.format(todaysDate);

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String gender = request.getParameter("gender");
            String mobile = request.getParameter("Mobile");
            String city = request.getParameter("City");
            String email = request.getParameter("email");
            String age = request.getParameter("age");
            String address = request.getParameter("address");

            con = DatabaseConnection.getConnection();
            ps = con.prepareStatement("INSERT INTO patient VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, gender);
            ps.setString(4, city);
            ps.setString(5, email);
            ps.setString(6, age);
            ps.setString(7, address);
            ps.setString(8, DateAndTime);
            ps.setString(9, mobile);

            int count = ps.executeUpdate();
            out.print(count);
            if (count > 0) {
    			out.print("<script>alert('Patient added successfully!');window.location='userHome.jsp'</script>");
            } else {
    			out.print("<script>alert('Invalid data please try again!');window.location='addpatient.jsp'</script>");
            }

        } catch (SQLException err) {
            err.printStackTrace();
        } 
    }
}
