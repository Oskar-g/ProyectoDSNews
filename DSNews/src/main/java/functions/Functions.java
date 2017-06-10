package functions;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class Functions 
{
	
	public static final DateFormat DATE_PARSER =
             new SimpleDateFormat("yyyy-MM-dd");

	
	public static String AcortarString(String texto, int size){
		String shortDescription = "", finalDescription = texto;
			
		if (texto.length() > 100) { finalDescription = shortDescription = texto.substring(0, size); }
		if (shortDescription.length() == 100) { finalDescription += "..."; }
		if (texto.length() == 0) { finalDescription = "No hay contenido actualmente";	}
		
		return finalDescription;
	}	

}
