package modelos;

import java.util.List;

public class ListadoIndex {
	/*
	 * ------------------------------------------------
	 * Attributos
	 *------------------------------------------------ 
	 */
	private String categoria;
	private List<ArticleRss> articulos;

	/*
	 * ------------------------------------------------
	 * Constructores
	 *------------------------------------------------ 
	 */
	public ListadoIndex (){ }
	
	// -----------------------------------------------
	
	public ListadoIndex(String categoria, List<ArticleRss> articulos) {
		super();
		this.categoria = categoria;
		this.articulos = articulos;
	}

	/*
	 * ------------------------------------------------
	 * Getters & Setters
	 *------------------------------------------------ 
	 */
	
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
	