package Model;

public class Order {
	
	private String type;
	private int quantity;
	private String fullName;
	private String phoneNo;
	private String email;
	private String notes;
	private String pickUpAddress;
	private String deliveryAddress;
	private int orderid;
	 
	
	public String getType() {
		return type;
	}
	public int getQuantity() {
		return quantity;
	}
	public String getFullName() {
		return fullName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public String getNotes() {
		return notes;
	}
	public String getPickUpAddress() {
		return pickUpAddress;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public int getOrderid() {
		return orderid;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public void setPickUpAddress(String pickUpAddress) {
		this.pickUpAddress = pickUpAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", type=" + type + ", quantity=" + quantity + ", fullName=" + fullName
				+ ", phoneNo=" + phoneNo + ", email=" + email + ", notes=" + notes + ", pickUpAddress=" + pickUpAddress
				+ ", deliveryAddress=" + deliveryAddress + "]";
	}
	
	
	
}
