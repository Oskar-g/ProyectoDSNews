package dao;

import modelos.User;

public interface DAOUser {
	public boolean login (User u, String pass);
	public User getUser(String name);
}
