package dao;

import java.util.List;

import modelos.Article;
import modelos.User;

public interface DAOArticle {
	public List<Article> listar(User u);
	public List<Article> listarSuperUser(User u);
	public boolean create(Article a, User u);
	public boolean update(Article a,User u);
	public Article read(int guid);
	public boolean delete(int guid);
	public List<Article> buscar(String filter, String keyword);


}
