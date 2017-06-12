package functions;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Clase Para pequeñas operaciones y utilidades
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
	 * MÉTODOS
	 * --------------------------------------------------------------
	 */
	
	/**
	 * Acortador de Strings
	 * 
	 * Empleado en la página de noticias, recorta la descripción de un periódico 
	 * si este contiene más de 100 caracteres
	 * 
	 * @param texto		Texto descriptivo a acortar
	 * @param size		Tamaño al que reducir
	 * 
	 * @return			Texto recortado con un ... al final
	 * 					El  texto sólo se recortará y se añadirá el ...
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
	
}//Fin de Functions
