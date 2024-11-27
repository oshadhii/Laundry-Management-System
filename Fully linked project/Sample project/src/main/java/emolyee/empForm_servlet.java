package emolyee;
import java.io.IOException;
import java.util.List;

//import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Employeeinsert")
public class empForm_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {     
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String u_name = request.getParameter("u_name");
		String pwd = request.getParameter("pwd");
		
		boolean Istrue;
		
		Istrue = empForm_DBUtil.insert(name, email, phone, u_name,pwd);
		
		if(Istrue == true) {
			request.setAttribute("errorMessage", "Your inquiry submitted successfully");
			RequestDispatcher rd = request.getRequestDispatcher("dash.jsp");
			rd.forward(request,response);
		}else {
			request.setAttribute("errorMessage", "Your inquiry submittion failed");
			RequestDispatcher rd = request.getRequestDispatcher("unsuccess.jsp");
			rd.forward(request,response);
		}
	}


}

