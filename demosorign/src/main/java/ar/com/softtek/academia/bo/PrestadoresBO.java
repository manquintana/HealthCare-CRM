package ar.com.softtek.academia.bo;

import java.util.List;

import ar.com.softtek.academia.dto.PrestadorDTO;
import ar.com.softtek.academia.entities.Prestador;


public interface PrestadoresBO {
	List<PrestadorDTO> getAllPrestadores();
	/*List<PrestadorDTO> getPrestadoresActivos();*/
	PrestadorDTO getPrestadorById();
	List<PrestadorDTO> getPrestadorByNombre();
	void addPrestador(Prestador prestador);
}
