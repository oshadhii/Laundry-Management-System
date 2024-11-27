package pack_customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class update_servlet
 */
@WebServlet("/update_servlet")
public class update_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("f_name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String nic = request.getParameter("nic");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		
		boolean isTrue;
		
		isTrue = customer_DBUtil.update_Servelet(name, address, email, mobile, nic, user, pass);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher1.forward(request, response);
		}
	}


}

