package model;


public class Bean {
	
	private String username = "";
	private String password = "";
	
	
	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}
	
	public String getPassWord() {
		return password;
	}

	public void setPassWord(String password) {
		this.password = password;
	}
	
	
	public boolean validate(String userName, String userPassword) {
		if (userName.equals("Bob") && userPassword.equals("hello123")) {
			 return true;

		} else if (userName.equals("Ida") && userPassword.equals("hello321")) {
			return true;
		} else {
			return false;
	}
	}

}
