package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	
	private String user;
    private String pass;
    private int count = 0;
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
        try {
            Connection con = DatabaseConnection.getConnection();

            user = request.getParameter("username");
            pass = request.getParameter("password");
            String repassp = request.getParameter("repassword");
            
            if(pass.equals(repassp)) {
            	PreparedStatement ps = con.prepareStatement("insert into login values(?,?)");
                ps.setString(1, user);
                ps.setString(2, pass);
                count = ps.executeUpdate();
            }else {
                out.print("<script>alert('Username & Password must be same..!');window.location='userRegister.jsp'</script>");
            }

            if (count > 0) {
                out.print("<script>alert('Register Successfully..!');window.location='index.jsp'</script>");
            } else {
                out.print("<script>alert('Register Failed..!');window.location='userRegister.jsp'</script>");
            }

        } catch (Exception e) {

        }
		
	}

}
