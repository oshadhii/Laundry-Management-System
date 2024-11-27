package pack_contact;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contact_servlet")
public class contact_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {     
		
		String name = request.getParameter("fu_name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String msg = request.getParameter("msg");
		
		boolean Istrue;
		
		Istrue = contact_DBUtil.insert(name, email, mobile, msg);
		
		if(Istrue == true) {
			request.setAttribute("errorMessage", "Your inquiry submitted successfully");
			RequestDispatcher rd = request.getRequestDispatcher("Contact_us.jsp");
			rd.forward(request,response);
		}else {
			request.setAttribute("errorMessage", "Your inquiry submittion failed");
			RequestDispatcher rd = request.getRequestDispatcher("Contact_us.jsp");
			rd.forward(request,response);
		}
	}

}
