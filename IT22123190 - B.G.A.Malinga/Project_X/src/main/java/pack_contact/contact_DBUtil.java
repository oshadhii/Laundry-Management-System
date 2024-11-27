package pack_contact;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class contact_DBUtil {
	
	private static boolean success;
	String url = "jdbc:mysql://localhost:3306/contact";
	String user = "root";
	String pass = "1234";
	
	public static List<contact> validate(String fname)
	{
		ArrayList<contact> cont = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/contact";
		String user = "root";
		String pass = "1234";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,user,pass);
			Statement stmt = conn.createStatement();
			
            String sql = "select * from inquiry where name = '"+fname+"'";
            ResultSet rs = stmt.executeQuery(sql);
            
            if (rs.next())
			{
                String name = rs.getString(1);
                String email = rs.getString(2);
                String mobile = rs.getString(3);
                String message = rs.getString(4);
                String id = rs.getString(5);
                
                contact c = new contact(name, email, mobile, message, id);
                cont.add(c);
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
		
		return cont;
	}
	
	public static boolean insert(String name, String email, String mobile, String message) 
	{
		
		String url = "jdbc:mysql://localhost:3306/contact";
		String user = "root";
		String pass = "1234";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			
            Statement stmt = conn.createStatement();
			
			String sql="insert into inquiry values ('"+ name +"','"+ email +"','"+ mobile +"','"+ message +"',0)";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0)
			{
                success = true;
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
		return success;
	}
	
	public static boolean update(String name, String email, String mobile, String message) {
		
		String url = "jdbc:mysql://localhost:3306/contact";
		String user = "root";
		String pass = "1234";
		
		try 
        {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			
            Statement stmt = conn.createStatement();
			
			String sql="update inquiry set name = '"+ name +"', email='"+email+"', mobile='"+mobile+"', message='"+message+"' where name = '"+name+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0)
			{
                success = true;
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
		return success;
	}
	
	public static boolean delete(String name) 
	{
		
		String url = "jdbc:mysql://localhost:3306/contact";
		String user = "root";
		String pass = "1234";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			
            Statement stmt = conn.createStatement();
			
			String sql="delete from inquiry where name = '"+ name +"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0)
			{
                success = true;
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
		return success;
	}
}
