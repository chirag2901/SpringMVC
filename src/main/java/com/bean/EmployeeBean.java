package com.bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class EmployeeBean {
	
	@Size(min = 3,max = 10,message = "Please check Name!")
	@NotBlank(message = "Field is required!")
	private String employeeName;
	
	@NotNull(message = "Field is Required")
	private int employeeAge;
	
	@Email(message = "Please Check Email")
	private String eEmail;
	
	private int eId;
	
	@Pattern(regexp = "[a-z]*")
	private String ePassword;
	public String getePassword() {
		return ePassword;
	}
	public void setePassword(String ePassword) {
		this.ePassword = ePassword;
	}
	public String geteEmail() {
		return eEmail;
	}
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	public int geteId() {
		return eId;
	}
	public void seteId(int eId) {
		this.eId = eId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public int getEmployeeAge() {
		return employeeAge;
	}
	public void setEmployeeAge(int employeeAge) {
		this.employeeAge = employeeAge;
	}
	
	
}
