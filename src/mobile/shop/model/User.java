package mobile.shop.model;

import mobile.shop.dto.UserDTO;


public class User {
	private Long id;
	private String username;
	private  int password;
	private String name;
	private String sex;
	private String birth;
	private String email;
	private String phone;
	private String mobile;
	private String address;
	
	public User() {
		super();
	}
	
	public User(String username, int password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public int getPassword() {
		return password;
	}
	
	public void setPassword(int password) {
		this.password = password;
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
	
	public void set(UserDTO userDTO) {
		this.username = userDTO.getUsername();
		this.password = userDTO.getPassword1();
		this.address = userDTO.getAddress();
		this.name = userDTO.getName();
		this.sex = userDTO.getSex();
		this.birth = userDTO.getBirth();
		this.email = userDTO.getEmail();
		this.phone = userDTO.getPhone();
		this.mobile = userDTO.getMobile();
		this.address = userDTO.getAddress();
	}
}