package model;

import java.io.Serializable;

public class Users implements Serializable
{
    private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
    
}
