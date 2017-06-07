package functions;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelos.User;

public class Functions 
{
	public static String AcortarString(String texto, int size){
		String shortDescription = "", finalDescription = texto;
			
		if (texto.length() > 100) { finalDescription = shortDescription = texto.substring(0, size); }
		if (shortDescription.length() == 100) { finalDescription += "..."; }
		if (texto.length() == 0) { finalDescription = "No hay contenido actualmente";	}
		
		return finalDescription;
	}	
	
	public static void estoyLogueado(HttpSession sesion,HttpServletResponse rs) throws IOException{
		User user = (User)sesion.getAttribute("user");		
		if (user==null){
			rs.sendRedirect("formLogin");
		}
	}
}
