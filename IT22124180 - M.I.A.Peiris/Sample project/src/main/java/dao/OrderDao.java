package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import Model.Order;
import db.DbConnect;

public class OrderDao {
	
	Connection connection;
	
	public void addOrder(Order order) {
		
		try {
			connection = DbConnect.getConnection();
			PreparedStatement pst = connection.prepareStatement("insert into `order` (type,quantity,full_name,phoneNo,email,notes,PickAdd,DeliverAdd) " + 
					"values (?,?,?,?,?,?,?,?)");
			
			pst.setString(1, order.getType());
			pst.setInt(2, order.getQuantity());
			pst.setString(3, order.getFullName());
			pst.setString(4, order.getPhoneNo());
			pst.setString(5, order.getEmail());
			pst.setString(6, order.getNotes());
			pst.setString(7, order.getPickUpAddress());
			pst.setString(8, order.getDeliveryAddress());
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Order> getOrders() {
		
		List<Order> orders = new ArrayList<Order>();
		
		try {
			connection = DbConnect.getConnection();
			
			Statement stmt = connection.createStatement();
			
			ResultSet rs = stmt.executeQuery("select orderId, type, quantity, full_name, phoneNo, email, notes, PickAdd, DeliverAdd from `order`");

			
			while(rs.next()) {
				
				Order order = new Order();
                
				order.setOrderid(rs.getInt("orderid"));
				order.setType(rs.getString("type"));
				order.setQuantity(rs.getInt("quantity"));
				order.setFullName(rs.getString("full_name")); 
				order.setPhoneNo(rs.getString("phoneNo")); 
				order.setEmail(rs.getString("email"));
				order.setNotes(rs.getString("notes"));
				order.setPickUpAddress(rs.getString("PickAdd"));
				order.setDeliveryAddress(rs.getString("DeliverAdd")); 

                
                orders.add(order);
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return orders;
		
	}
	
	public void deleteOrder(int orderid) {
		
		try {
			connection = DbConnect.getConnection();
			
			PreparedStatement pst = connection.prepareStatement("delete from `order` where orderId = ? ");
			pst.setInt(1, orderid);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Order getOrderbyId(int orderid) {
		
		Order order1 = new Order();
		
		try {
			connection = DbConnect.getConnection();
			
			PreparedStatement pst = connection.prepareStatement("select * from `order` where orderId=?");
			pst.setInt(1, orderid);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()) {
            	
            	order1.setType(rs.getString("type"));
				order1.setQuantity(rs.getInt("quantity"));
				order1.setFullName(rs.getString("full_name")); 
				order1.setPhoneNo(rs.getString("phoneNo")); 
				order1.setEmail(rs.getString("email"));
				order1.setNotes(rs.getString("notes"));
				order1.setPickUpAddress(rs.getString("PickAdd"));
				order1.setDeliveryAddress(rs.getString("DeliverAdd")); 
            }
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return order1;
	}
	
	public void updateOrder(Order order) {
	    try {
	        connection = DbConnect.getConnection();
	        PreparedStatement pst = connection.prepareStatement("UPDATE `order` "
	                + "SET type=?, quantity=?, full_name=?, phoneNo=?, email=?, notes=?, PickAdd=?, DeliverAdd=? "
	                + "WHERE orderId=?");

	        pst.setString(1, order.getType());
	        pst.setInt(2, order.getQuantity());
	        pst.setString(3, order.getFullName());
	        pst.setString(4, order.getPhoneNo());
	        pst.setString(5, order.getEmail());
	        pst.setString(6, order.getNotes());
	        pst.setString(7, order.getPickUpAddress());
	        pst.setString(8, order.getDeliveryAddress());
	        pst.setInt(9, order.getOrderid());

	        int rowsAffected = pst.executeUpdate();
	        if (rowsAffected > 0) {
	            System.out.println("Order Updated");
	        } else {
	            System.out.println("Order Not Updated");
	        }
	    } catch (SQLException e) {
	        System.err.println("SQL Exception: " + e.getMessage());
	        System.err.println("SQL State: " + e.getSQLState());
	        System.err.println("Error Code: " + e.getErrorCode());
	        e.printStackTrace();
	    } finally {
	        
	        try {
	            if (connection != null) {
	                connection.close();
	            }
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    }
	}


	
}

