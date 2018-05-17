package org.ingservicios.practica1;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class DaoProducto implements DaoProducto_Interface {	
	
	
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
	   this.dataSource = dataSource;
	   this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	/**
	 * Método para devolver la lista de productos
	 */
	public List<DtoProducto> read(){
		//Sentencia SQL
		String sql = "select * from productos";
		
		//Inicio mapeo
		ProductoMapper mapper = new ProductoMapper();
		
		//Consulta mediante jdbcTemplate
		List<DtoProducto> lista = this.jdbcTemplate.query(sql, mapper);
		
		return lista;
	}
	
	/**
	 * Metodo para actualizar el número de unidades de un producto
	 */
	public void actualizar (int unidades,int id){
		//Sentencial SQL
		String sql = "update productos set  unidades= ? where ref= ?";
		
		//Consulta mediante jdbcTemplate
        this.jdbcTemplate.update(sql,unidades,id);
	}
}