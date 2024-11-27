package pack_contact;

public class contact {
	private String name;
	private String email;
	private String mobile;
	private String message;
	private String id;
	
	public contact(String name, String email, String mobile, String message, String id) {
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.message = message;
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getMessage() {
		return message;
	}
	public String getId() {
		return id;
	}

}
