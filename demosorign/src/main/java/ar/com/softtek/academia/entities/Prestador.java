package ar.com.softtek.academia.entities;

public class Prestador {
	private int id;
	private String nombre;
	private String apellido;
	private int idPractica;

	
	public Prestador() {
	} 
	



	public Prestador(int id, String nombre, String apellido, int idPractica) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.idPractica = idPractica;

	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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



	public int getIdPractica() {
		return idPractica;
	}


	public void setIdPractica(int idPractica) {
		this.idPractica = idPractica;
	}
	
}
