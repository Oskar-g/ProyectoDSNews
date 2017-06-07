package utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

	

	public static String formatearFecha(Date f){
		SimpleDateFormat parser = new SimpleDateFormat(getFormatoFecha());
		return parser.format(f);
	}
	
	public static Date parse(String f){
		Date d =null;
		SimpleDateFormat parser = new SimpleDateFormat(getFormatoFecha());
		try {
			d = parser.parse(f);
		} catch (ParseException pe) {
			pe.printStackTrace();
		}
		return d;
	}
	
	public static String getFormatoFecha(){
		return "dd/MM/yyyy";
	}
	
	public static String getFormatoFechaVista(){
		return "dd/mm/yy";
	}
}
