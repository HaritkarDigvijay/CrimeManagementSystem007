package com.nucleus.bean;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@SuppressWarnings("serial")
@Entity
public class OfficerBean implements Serializable {

	private String stationName;
	private String stationArea;
	@Id
	private String officerName;
	private String emailAddress;
	private String password;

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public String getStationArea() {
		return stationArea;
	}

	public void setStationArea(String stationArea) {
		this.stationArea = stationArea;
	}

	public String getOfficerName() {
		return officerName;
	}

	public void setOfficerName(String officerName) {
		this.officerName = officerName;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "OfficerBean [stationName=" + stationName + ", stationArea=" + stationArea + ", officerName="
				+ officerName + ", emailAddress=" + emailAddress + ", password=" + password + "]";
	}

}
