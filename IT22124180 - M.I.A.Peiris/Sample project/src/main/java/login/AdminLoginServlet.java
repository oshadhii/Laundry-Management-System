package login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            PrintWriter out=response.getWriter();
            response.setContentType("text/html");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","1234");

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            PreparedStatement statement = con.prepareStatement("SELECT username from admin where username=? and password=?");
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();

            if(rs.next()) {
                RequestDispatcher rd=request.getRequestDispatcher("AdminHomejsp.jsp");
                rd.forward(request, response);
            }
            else {
            	request.setAttribute("errorMessage", "Password Do Not Match!.");
            	RequestDispatcher dispatcher = request.getRequestDispatcher("adminSign.jsp");
            	dispatcher.forward(request, response);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
	}
}
