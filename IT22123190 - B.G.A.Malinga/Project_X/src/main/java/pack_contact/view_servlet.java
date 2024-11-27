package pack_contact;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view_servlet")
public class view_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
        String fname = request.getParameter("f_name");
		
        try {
			List<contact> contDetails = contact_DBUtil.validate(fname);
			request.setAttribute("contDetails", contDetails);
        }
        
        catch(Exception e) {
            e.printStackTrace();
        }
        
		RequestDispatcher dis1 = request.getRequestDispatcher("id.jsp");  
		dis1.forward(request, response);
	}

}
