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

@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet {
	
	private int count = 0;
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        try {
            Date todaysDate = new Date();
            DateFormat df2 = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");

            String sid = request.getParameter("id");
            int id = Integer.parseInt(sid);
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("Mobile");
            String city = request.getParameter("City");
            String email = request.getParameter("email");
            String age = request.getParameter("age");
            String address = request.getParameter("address");
            String qualification = request.getParameter("qualification");

            String DateAndTime = df2.format(todaysDate);

            Connection con = DatabaseConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into doctor values(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, id);
            ps.setString(2, fname);
            ps.setString(3, lname);
            ps.setString(4, gender);
            ps.setString(5, phone);
            ps.setString(6, city);
            ps.setString(7, email);
            ps.setString(8, age);
            ps.setString(9, address);
            ps.setString(10, DateAndTime);
            ps.setString(11, qualification);

            count = ps.executeUpdate(); 
            if (count > 0) {
    			out.print("<script>alert('Data Add Successfully..!');window.location='adminHome.jsp'</script>");
            } else {
    			out.print("<script>alert('Failed !!!!,try Again Later!');window.location='addDoctor.jsp'</script>");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
		
	}

}
