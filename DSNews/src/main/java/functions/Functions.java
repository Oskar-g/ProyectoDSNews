package functions;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Clase Para peque�as operaciones y utilidades
 * 
 * @author Dopetrope Team
 *
 */
public class Functions {
	/*
	 * --------------------------------------------------------------
	 * Constantes
	 * --------------------------------------------------------------
	 */
	
	/**
	 * Formateo de fecha a "yyyy-MM-dd"
	 */
	public static final DateFormat DATE_PARSER =
             new SimpleDateFormat("yyyy-MM-dd");

	/*
	 * --------------------------------------------------------------
	 * M�TODOS
	 * --------------------------------------------------------------
	 */
	
	/**
	 * Acortador de Strings
	 * 
	 * Empleado en la p�gina de noticias, recorta la descripci�n de un peri�dico 
	 * si este contiene m�s de 100 caracteres
	 * 
	 * @param texto		Texto descriptivo a acortar
	 * @param size		Tama�o al que reducir
	 * 
	 * @return			Texto recortado con un ... al final
	 * 					El  texto s�lo se recortar� y se a�adir� el ...
	 * 					en caso de superar el limite size
	 */
	public static String AcortarString(String texto, int size){
		String shortDescription = "", finalDescription = texto;
			
		if (texto.length() > 100) { finalDescription = shortDescription = texto.substring(0, size); }
		if (shortDescription.length() == 100) { finalDescription += "..."; }
		if (texto.length() == 0) { finalDescription = "No hay contenido actualmente";	}
		
		return finalDescription;
		
	}// Fin de AcortarString	

	
	// --------------------------------------------------------------
	
	/**
	 * Limpiador de Strings
	 * 
	 * Empleado para quitar todo el contenido html de un texto
	 * 
	 * @param texto		Texto descriptivo a limpiar
	 * 
	 * @return			Texto sin etiquetas html <>
	 */
	public static String LimpiarTexto(String texto){
		
		//Implementar a futuro
		
		return "x";
		
	}// Fin de AcortarString	
	
	
	public static String linkGenerator(String title, String server, int nextguid){
		String url="";
		Date date = new Date();
        String newdate= new SimpleDateFormat("yyyy/MM/dd").format(date);
        
        String link = server+"noticiasDSNews?n="+nextguid+"--"+newdate;
      
		try {
			url = URLEncoder.encode(title, "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
        link+="-"+url;

        System.out.println(link);
		
		return link;
	}
	
	
}//Fin de Functions
