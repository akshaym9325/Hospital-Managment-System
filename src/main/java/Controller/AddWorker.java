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
@WebServlet("/AddWorker")
public class AddWorker extends HttpServlet {
	
	private int count = 0;
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        try {
            Date todaysDate = new Date();
            DateFormat df2 = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String phone = request.getParameter("Mobile");

            String DateAndTime = df2.format(todaysDate);

            Connection con = DatabaseConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into worker values(?,?,?,?)");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, phone);
            ps.setString(4, DateAndTime);

            count = ps.executeUpdate(); 
            if (count > 0) {
    			out.print("<script>alert('Data Add Successfully..!');window.location='adminHome.jsp'</script>");
            } else {
    			out.print("<script>alert('Failed !!!!,try Again Later!');window.location='addWorker.jsp'</script>");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
		
	}

}
