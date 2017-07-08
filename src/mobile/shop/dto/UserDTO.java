package mobile.shop.dto;

public class UserDTO {
	private String username;
	private  int password1;
	private int password2;
	private String name;
	private String sex;
	private String birth;
	private String email;
	private String phone;
	private String mobile;
	private String address;
	private String rand;
	
	public String getRand() {
		return rand;
	}
	
	public void setRand(String rand) {
		this.rand = rand;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public int getPassword1() {
		return password1;
	}
	
	public void setPassword1(int password1) {
		this.password1 = password1;
	}
	
	public int getPassword2() {
		return password2;
	}
	
	public void setPassword2(int password2) {
		this.password2 = password2;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getBirth() {
		return birth;
	}
	
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
}
