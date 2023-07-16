package com.example.coyongyong.domain;

public class customerVO {

	private String customerID;
	private String customerPW;
	private String name;
	private String tel;
	private String Email;
	private String lastChangedPwDay;
	private String customerNickname;
	private String customerImage;
	private int customerLike;
	private String customerIntro;
	
		

//	회원 아이디	
	public String getcustomerID() {
		return customerID;
	}
	public void setcustomerID(String id) {
		this.customerID = id;
	}
	
//	회원 비밀번호	
	public String getcustomerPW() {
		return customerPW;
	}
	public void setcustomerPW(String passwd) {
		this.customerPW = passwd;
	}
	
//	회원이름	
	public String getname() {
		return name;
	}
	public void setname(String username) {
		this.name = username;
	}
	
//	전화번호	
	public String gettel() {
		return tel;
	}
	public void settel(String mobile) {
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
	
//	비밀번호 변경 일자
	public String getcustomerNickname() {
		return customerNickname;
	}
	public void setcustomerNickname(String customerNickname) {
		this.customerNickname = customerNickname;
	}
	
//	비밀번호 변경 일자
	public String getcustomerImage() {
		return customerImage;
	}
	public void setcustomerImage(String customerImage) {
		this.customerImage = customerImage;
	}
	
//	비밀번호 변경 일자
	public int getcustomerLike() {
		return customerLike;
	}
	public void setcustomerLike(int customerLike) {
		this.customerLike = customerLike;
	}
	
//	비밀번호 변경 일자
	public String getcustomerIntro() {
		return customerIntro;
	}
	public void setcustomerIntro(String customerIntro) {
		this.customerIntro = customerIntro;
	}
	@Override
	public String toString() {
		return "CustomerVO [아이디=" + customerID + ", passwd=" + customerPW + ", username=" + name 
				 + ", mobile=" + tel + ", email=" + Email + ", 비밀번호 변경일=" + lastChangedPwDay + "]";
	}

	
}
