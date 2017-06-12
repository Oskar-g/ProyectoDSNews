package dao;

import java.util.List;

import modelos.Article;
import modelos.User;

public interface DAOArticle {
	public List<Article> listar(User u);
	public List<Article> listarSuperUser();
	public boolean create(Article a);
	public boolean update(Article a);
	public Article read(int guid);
	public boolean delete(int guid);
	public List<Article> buscar(String filter, String keyword);
	public List<Article> buscar(String filter, String keyword,int userId);
	public List<Article> listarRss(int section);


}
