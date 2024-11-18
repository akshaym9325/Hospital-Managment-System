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

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	
	private String user;
    private String pass;
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        try {
            String userp = request.getParameter("username");
            String passp = request.getParameter("password");
            Connection con = DatabaseConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM login");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = rs.getString(1);
                pass = rs.getString(2);
            }
            if (userp.equals(user) && passp.equals(pass)) {
                HttpSession sess = request.getSession();
                sess.setAttribute("Crntuser", user);
    			out.print("<script>alert('Login Successfully..!');window.location='userHome.jsp'</script>");
            } else {
    			out.print("<script>alert('Username or Password is Incorrect..!');window.location='index.jsp'</script>");
            }
        } catch (Exception e) {

        }
		
	}

}
