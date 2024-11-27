package web;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Order;
import dao.OrderDao;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private OrderDao dao;
	Connection connection;
    
    public OrderServlet() {
        super();
        dao = new OrderDao();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String action = request.getParameter("action");
		@SuppressWarnings("unused")
		String forward="";
		
		if(action==null) {
			action = "default";
		}
		
		switch (action) {
			case "delete":
								
				int orderid = Integer.parseInt(request.getParameter("orderid"));
				dao.deleteOrder(orderid);
				
				RequestDispatcher dis = request.getRequestDispatcher("updatesample.jsp");
				request.setAttribute("orders", dao.getOrders());
				dis.forward(request, response);
				forward = "/view.jsp";
				
				break;
				
			case "update":
			
				RequestDispatcher dis2 = request.getRequestDispatcher("Order.jsp");

				orderid = Integer.parseInt(request.getParameter("orderid"));
				
				Order order = dao.getOrderbyId(orderid);
				request.setAttribute("order", order);
				
				dis2.forward(request, response);
				
				break;
				
		
			default:
				RequestDispatcher dis3 = request.getRequestDispatcher("updatesample.jsp");
				request.setAttribute("orders", dao.getOrders());
				dis3.forward(request, response);
				break;
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Order order = new Order();
		
		order.setType(request.getParameter("type"));
		order.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		order.setFullName(request.getParameter("Fname"));
		order.setPhoneNo(request.getParameter("no"));
		order.setEmail(request.getParameter("email"));
		order.setNotes(request.getParameter("notes"));
		order.setPickUpAddress(request.getParameter("pick"));
		order.setDeliveryAddress(request.getParameter("deliver"));
		
		String orderid = request.getParameter("orderid");
		
		if(orderid==null || orderid.isEmpty()) {
			
			dao.addOrder(order);
		}
		else{
			order.setOrderid(Integer.parseInt(orderid));
			dao.updateOrder(order);	
		}
		
		RequestDispatcher dis4 = request.getRequestDispatcher("updatesample.jsp");
		request.setAttribute("orders", dao.getOrders());
		dis4.forward(request, response);
	}
}
