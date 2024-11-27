package pack_customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class customer_DBUtil {
	
	private static boolean success;
	String url = "jdbc:mysql://localhost:3306/project";
	String user1 = "root";
	String pass = "1234";
	
	public static boolean insert(String name, String address, String email, String mobile, String nic, String user, String password) 
	{
		
		String url = "jdbc:mysql://localhost:3306/project";
		String user1 = "root";
		String pass = "1234";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user1, pass);
			
            Statement stmt = conn.createStatement();
			
			String sql="insert into customer values ('"+name+"','"+address+"','"+email+"','"+mobile+"','"+nic+"','"+user+"','"+password+"',0)";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0)
			{
                success = true;
            }
			else 
            {
            	success = true;
            }
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return success;
	}
	
	
	
	public static List<customer> validate(String fname)
	{
		ArrayList<customer> cus = new ArrayList<>();
		
		//boolean success;
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "1234";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,user,pass);
			Statement stmt = conn.createStatement();
			
            String sql = "select * from customer where name = '"+fname+"'";
            ResultSet rs = stmt.executeQuery(sql);
            
            if (rs.next())
			{
                String name = rs.getString(1);
                String address = rs.getString(2);
                String email = rs.getString(3);
                String mobile = rs.getString(4);
                String nic = rs.getString(5);
                String user1 = rs.getString(6);
                String password = rs.getString(7);
                String id = rs.getString(8);
                
                customer c = new customer(name,address, email, mobile, nic, user1, password, id);
                cus.add(c);
            }
			else 
            {
            	success = false;
            }
            
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	public static boolean delete_servlet(String fname) {
		
		boolean isSuccess = false;
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "delete from customer where name='"+fname+"'";
															
			int results = stmt.executeUpdate(sql);
			
			if(results > 0 ) {
				success = true;
	        }
			
			else {
				success = false;
			}
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	/*update eka...........*/
	public static boolean update_Servelet(String name,String address,String email,String mobile,String nic,String username,String password) {
		boolean success = false;
		
		/*int convId = Integer.parseInt(name);*/
		
		
		
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update customer set name= '"+name+"', address= '"+address+"', email= '"+email+"', mobile= '"+mobile+"',nic= '"+nic+"', user= '"+username+"', password= '"+password+"' where name= '"+name+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				success = true;
			}
			
			else {
				success = false;
			}
			
			
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return success;
		
		
	}
		
		

	
}
