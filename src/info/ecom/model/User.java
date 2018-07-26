
package info.ecom.model;


public class User {
    private int userId;
    private String userName;
    private String userPassword;
    private int userLevel;
    private String email;
    private String address;
    private String phone;
    

    public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
    public int getUserId() {
        return userId;
    }

    
    public void setUserId(int userId) {
        this.userId = userId;
    }

   
    public String getUserName() {
        return userName;
    }

  
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

   
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

   
    public int getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(int userLevel) {
        this.userLevel = userLevel;
    }

   
    public String getEmail() {
        return email;
    }

   
    public void setEmail(String email) {
        this.email = email;
    }
    
}
