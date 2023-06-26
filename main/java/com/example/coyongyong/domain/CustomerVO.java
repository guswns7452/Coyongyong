package com.example.coyongyong.domain;

public class customerVO {

	private String customerID;
	private String customerPW;
	private String name;
	private String tel;
	private String Email;
	private String lastChangedPwDay;

//	회원 아이디	
	public String getId() {
		return customerID;
	}
	public void setId(String id) {
		this.customerID = id;
	}
	
//	회원 비밀번호	
	public String getPasswd() {
		return customerPW;
	}
	public void setPasswd(String passwd) {
		this.customerPW = passwd;
	}
	
//	회원이름	
	public String getUsername() {
		return name;
	}
	public void setUsername(String username) {
		this.name = username;
	}
	
//	전화번호	
	public String getTel() {
		return tel;
	}
	public void setTel(String mobile) {
		this.tel = mobile;
	}
	
//	이메일
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		this.Email = email;
	}

//	비밀번호 변경 일자
	public String getlastChangedPwDay() {
		return lastChangedPwDay;
	}
	public void setlastChangedPwDay(String changePW) {
		this.lastChangedPwDay = changePW;
	}
	
	@Override
	public String toString() {
		return "CustomerVO [아이디=" + customerID + ", passwd=" + customerPW + ", username=" + name 
				 + ", mobile=" + tel + ", email=" + Email + ", 비밀번호 변경일=" + lastChangedPwDay + "]";
	}

	
}
