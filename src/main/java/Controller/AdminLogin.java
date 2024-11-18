package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DatabaseConnection;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	
	 private String user;
	 private String pass;
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        try {
            Connection con = DatabaseConnection.getConnection();
        	
            String uname = request.getParameter("uname");
            String upass = request.getParameter("upass");

            PreparedStatement ps = con.prepareStatement("select * from adminreg");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) { 
                user = rs.getString(1);
                pass = rs.getString(2);
            }
            if (user.equals(uname) && pass.equals(upass)) {
                HttpSession sess = request.getSession();
                sess.setAttribute("Crntadmin", user);
                out.print("<script>alert('Login Successfully..!');window.location='adminHome.jsp'</script>");
            } else {
                out.print("<script>alert('Username or Password is Incorrect..!');window.location='index.jsp'</script>");
            }
        } catch (Exception e) {
        		
        }
		
	}

}
