package emolyee;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class empForm_DBUtil {
	
	/*public static List<employee> validate (String fname)
	{
		ArrayList<employee> cont = new ArrayList<>();
		
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
                String phone = rs.getString(3);
                String u_name = rs.getString(4);
                String pwd = rs.getString(5);
                String id = rs.getString(6);
                
                employee c = new employee(name, email, phone, u_name, pwd,id);
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
	}*/
	
	private static boolean success;
	String url = "jdbc:mysql://localhost:3306/laund";
	String user = "root";
	String pass = "Piyush@2002";
	
	public static boolean insert(String name, String email, String phone, String u_name,String pwd) 
	{
		
		String url = "jdbc:mysql://localhost:3306/laund";
		String user = "root";
		String pass = "Piyush@2002";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			
            Statement stmt = conn.createStatement();
			
			String sql="insert into employee values ('"+ name +"','"+ email +"','"+ phone +"','"+ u_name +"','"+ pwd+"',0)";
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



//read
public static List<employee> validate1(String fname)
{
	ArrayList<employee> emp = new ArrayList<>();
	
	//boolean success;
	String url = "jdbc:mysql://localhost:3306/laund";
	String user = "root";
	String pass = "Piyush@2002";
	
	try 
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url,user,pass);
		Statement stmt = conn.createStatement();
		
        String sql = "select * from employee where name = '"+fname+"'";
        ResultSet rs = stmt.executeQuery(sql);
        
        if (rs.next())
		{
            String name = rs.getString(1);
            String email = rs.getString(2);
            String phone = rs.getString(3);
            String uname = rs.getString(4);
            String pwd = rs.getString(5);
            String id = rs.getString(6);
            
            employee c = new employee(name, email, phone,  uname, pwd, id);
            emp.add(c);
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
	
	return emp;
	}


//delete

public static boolean delete(String name) {
	
	//create database connection
	
	String url = "jdbc:mysql://localhost:3306/laund";
	String user = "root";
	String pass = "Piyush@2002";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		
		Statement stmt = con.createStatement();
		
		String sql = "delete from employee where name ='"+ name +"'";
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
	
	
	return success;
}
//update
public static boolean update(String name, String email, String phone, String uname, String pwd) {
	 
	String url = "jdbc:mysql://localhost:3306/laund";
	String user = "root";
	String pass = "Piyush@2002";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		
		Statement stmt = con.createStatement();
		
		String sql = "update employee set name ='"+ name +"',email='"+email+"',phone='"+phone+"', uname='"+uname+"',pwd='"+pwd+"' where name ='"+name+"'";
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
	
	
	return success;
}
}




