package modelos;

import java.util.List;

public class ListadoIndex {
	private String categoria;
	private List<ArticleRss> articulos;

	
	//Constructores
	//Constructor vacio
	public ListadoIndex (){
	}
	
	public ListadoIndex(String categoria, List<ArticleRss> articulos) {
		super();
		this.categoria = categoria;
		this.articulos = articulos;
	}
	//Getters setters
	
	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public List<ArticleRss> getArticulos() {
		return articulos;
	}

	public void setArticulos(List<ArticleRss> articulos) {
		this.articulos = articulos;
	}
}
	