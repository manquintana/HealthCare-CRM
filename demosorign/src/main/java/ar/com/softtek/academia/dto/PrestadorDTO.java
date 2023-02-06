package ar.com.softtek.academia.dto;

public class PrestadorDTO { //Igual a la entity pero sin id
	private String nombre;
	private String apellido;
	
	
	public PrestadorDTO(String nombre, String apellido) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
	}


	public PrestadorDTO() {
		// TODO Auto-generated constructor stub
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	
}
