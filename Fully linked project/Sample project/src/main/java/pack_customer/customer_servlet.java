package pack_customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Customerinsert")
public class customer_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("f_name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String nic = request.getParameter("nic");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		boolean Istrue;
		
		Istrue = customer_DBUtil.insert(name, address, email, mobile, nic, user, pass);
		
		if(Istrue == true) {
			request.setAttribute("errorMessage", "Your inquiry submittion successfully");
			RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");
			rd.forward(request,response);
		}else {
			request.setAttribute("errorMessage", "Your inquiry submittion failed");
			RequestDispatcher rd = request.getRequestDispatcher("unsuccess.jsp");
			rd.forward(request,response);
		}
	}

}
