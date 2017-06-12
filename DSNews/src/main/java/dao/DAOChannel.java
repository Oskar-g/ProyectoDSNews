package dao;


import modelos.Channel;

public interface DAOChannel {
	public Channel read();
	public Channel read(int id);
}
