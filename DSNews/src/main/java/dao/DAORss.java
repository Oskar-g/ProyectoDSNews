package dao;

import java.util.List;

import modelos.Rss;

public interface DAORss {
	public List<Rss> listar();
	public boolean create(Rss r);
}
