package pack_customer;

public class customer {
	private String name;
	private String address;
	private String email;
	private String mobile;
	private String nic;
	private String user;
	private String password;
	private String id;
	
	public customer(String name, String address, String email, String mobile, String nic, String user, String password,String id) {
		super();
		this.name = name;
		this.address = address;
		this.email = email;
		this.mobile = mobile;
		this.nic = nic;
		this.user = user;
		this.password = password;
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getNic() {
		return nic;
	}

	public String getUser() {
		return user;
	}

	public String getPassword() {
		return password;
	}

	public String getId() {
		return id;
	}

}
