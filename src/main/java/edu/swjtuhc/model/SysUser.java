package edu.swjtuhc.model;

public class SysUser {
	private int userId;
	private String username;
	private String userPassword;
	private String rePassword;
	private String userPhonenumber;
	private String adminUname;
	private String adminPassword;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getRePassword() {
		return rePassword;
	}
	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}
	public String getUserPhonenumber() {
		return userPhonenumber;
	}
	public void setUserPhonenumber(String userPhonenumber) {
		this.userPhonenumber = userPhonenumber;
	}
	public String getAdminUname() {
		return adminUname;
	}
	public void setAdminUname(String adminUname) {
		this.adminUname = adminUname;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	@Override
	public String toString() {
		return "SysUser [userId=" + userId + ", username=" + username + ", userPassword=" + userPassword
				+ ", rePassword=" + rePassword + ", userPhonenumber=" + userPhonenumber + ", adminuname=" + adminUname
				+ ", adminPassword=" + adminPassword + "]";
	}
}