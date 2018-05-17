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
	 * Método para inicializar la sesión
	**/


	public static void CrearSession(HttpServletRequest request, DtoUsuario usuarioDB,List<DtoProducto> listaCompra){
		Date today = new Date();
		
		//Creamos la sesión
		HttpSession sesion = request.getSession(true);
		
		//Obtenemos fecha de creación de la sesión
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yy HH:mm:SS");

    	String date = DATE_FORMAT.format(today);

    	System.out.println("Conexion: " + date);
		
		//Añadimos la fecha a la sesion

		sesion.setAttribute("date", date);

		//Añadimos el usuario a la sesión

		sesion.setAttribute ("usuario",usuarioDB);

		//Establecemos la lista de productos a null

		sesion.setAttribute("lista", listaCompra);

		//Inicializamos el total de la sesión.

		Double total=0.0;

		sesion.setAttribute("total", total);

		//Establecemos la expiración de la sesión a 1 hora

		sesion.setMaxInactiveInterval(60*60);
	}
}
