package emolyee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Employeeview")
public class view_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		 try {
				List<employee> empDetails = empForm_DBUtil.validate1(name);
				request.setAttribute("empDetails", empDetails);
	        }
	        
	        catch(Exception e) {
	            e.printStackTrace();
	        }
	        
			RequestDispatcher dis1 = request.getRequestDispatcher("dash.jsp");  
			dis1.forward(request, response);
	}

}
