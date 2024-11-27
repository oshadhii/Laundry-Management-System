package pack_customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete_servlet")
public class delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("f_name");
		boolean isTrue;
		
		isTrue = customer_DBUtil.delete_servlet(name);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("customer.jsp");
            dispatcher1.forward(request, response);
		}
	}

}
