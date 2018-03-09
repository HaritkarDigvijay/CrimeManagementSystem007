package com.nucleus.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@SuppressWarnings("serial")
@Entity
public class CivilianBean implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String applicantFirstName;
	private String applicantLastName;
	private String emailId;
	private String mobileNumber;
	private String password;

	// Getters And Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getApplicantFirstName() {
		return applicantFirstName;
	}

	public void setApplicantFirstName(String applicantFirstName) {
		this.applicantFirstName = applicantFirstName;
	}

	public String getApplicantLastName() {
		return applicantLastName;
	}

	public void setApplicantLastName(String applicantLastName) {
		this.applicantLastName = applicantLastName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "CivilianBean [id=" + id + ", applicantFirstName=" + applicantFirstName + ", applicantLastName="
				+ applicantLastName + ", emailId=" + emailId + ", mobileNumber=" + mobileNumber + ", password="
				+ password + "]";
	}

}
