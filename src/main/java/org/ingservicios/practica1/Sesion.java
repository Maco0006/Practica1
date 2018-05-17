package org.ingservicios.practica1;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import org.ingservicios.practica1.DtoProducto;
import org.ingservicios.practica1.DtoUsuario;


public class Sesion {

	/**
	 * M�todo para inicializar la sesi�n
	**/


	public static void CrearSession(HttpServletRequest request, DtoUsuario usuarioDB,List<DtoProducto> listaCompra){
		Date today = new Date();
		
		//Creamos la sesi�n
		HttpSession sesion = request.getSession(true);
		
		//Obtenemos fecha de creaci�n de la sesi�n
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yy HH:mm:SS");

    	String date = DATE_FORMAT.format(today);

    	System.out.println("Conexion: " + date);
		
		//A�adimos la fecha a la sesion

		sesion.setAttribute("date", date);

		//A�adimos el usuario a la sesi�n

		sesion.setAttribute ("usuario",usuarioDB);

		//Establecemos la lista de productos a null

		sesion.setAttribute("lista", listaCompra);

		//Inicializamos el total de la sesi�n.

		Double total=0.0;

		sesion.setAttribute("total", total);

		//Establecemos la expiraci�n de la sesi�n a 1 hora

		sesion.setMaxInactiveInterval(60*60);
	}
}
