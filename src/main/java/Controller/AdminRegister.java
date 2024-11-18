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
@WebServlet("/AdminRegister")
public class AdminRegister extends HttpServlet {
	
	private int count = 0;
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        try {
            Connection con = DatabaseConnection.getConnection();
            
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            String repass = request.getParameter("repass");
            
            if(pass.equals(repass)) {
            	 PreparedStatement ps = con.prepareStatement("insert into adminreg values(?,?)");
                 ps.setString(1, uname);
                 ps.setString(2, pass);
                 count = ps.executeUpdate(); 
            }else {
                out.print("<script>alert('Username & Password must be same..!');window.location='adminRegister.jsp'</script>");
            }
        
            if (count > 0) {
                out.print("<script>alert('Registerd Successfully..!');window.location='adminLogin.jsp'</script>");
            } else {
                out.print("<script>alert('Not done Successfully..!');window.location='adminRegister.jsp'</script>");
            }

        } catch (Exception e) {

        }
		
	}

}
