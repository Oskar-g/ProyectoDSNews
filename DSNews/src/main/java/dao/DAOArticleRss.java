package dao;

import java.util.List;

import modelos.ArticleRss;

public interface DAOArticleRss {
	public List<ArticleRss> listar();
	public boolean create(ArticleRss art);
	public boolean update(ArticleRss art);
	public ArticleRss read(int id);	public boolean delete(int id);
	public int getSiguienteOrden();
	public void updateOrdenRezagados(int o);
}
