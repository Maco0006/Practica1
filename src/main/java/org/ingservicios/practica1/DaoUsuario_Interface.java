package org.ingservicios.practica1;


import java.util.List;

public interface DaoUsuario_Interface {
	
	public void create(DtoUsuario usuarios);

	/**
	 * M�todo que devuelve si existe ya un usuario en la base de datos con el nombre dado
	 */
	public Boolean existsName(String idName);
	
	/**
	 * M�todo que devuelve si existe ya un usuario en la base de datos con el email dado
	 */
	public Boolean existsEmail(String idEmail);
	
	/**
	 * M�todo que devuelve el usuario de la base de datos dado su email
	 */
	public DtoUsuario obtenerUsu (String email);
	

	public void actualizar(DtoUsuario user,String email);
	
	/**
	 * M�todo para obtener los usuarios y administradores (miembros) almacenados en la BBDD
	 */
	public List<DtoUsuario> read();	
}