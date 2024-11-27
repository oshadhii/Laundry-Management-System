package emolyee;

public class employee {

	private String name;
	private String email;
	private String phone;
	private String uname;
	private String pwd;
	private String id;
	
	
	public employee(String name, String email, String phone, String uname, String pwd, String id) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.uname = uname;
		this.pwd = pwd;
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getUname() {
		return uname;
	}


	public String getPwd() {
		return pwd;
	}


	public String getId() {
		return id;
	}

	
}
