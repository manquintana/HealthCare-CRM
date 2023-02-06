package ar.com.softtek.academia.bo.impl;

import java.util.ArrayList;
import java.util.List;

import ar.com.softtek.academia.bo.PrestadoresBO;
import ar.com.softtek.academia.dao.PrestadoresDAO;
import ar.com.softtek.academia.dto.PrestadorDTO;
import ar.com.softtek.academia.entities.Prestador;
import ar.com.softtek.academia.mapper.PrestadorMapper;

public class PrestadoresBOImpl implements PrestadoresBO {
	
	private PrestadoresDAO prestadoresDAO;
	private PrestadorMapper mapper;
	
	public PrestadoresDAO getPrestadoresDAO() {
		return prestadoresDAO;
	}

	public void setPrestadoresDAO(PrestadoresDAO prestadoresDAO) {
		this.prestadoresDAO = prestadoresDAO;
	}

	public PrestadorMapper getMapper() {
		return mapper;
	}

	public void setMapper(PrestadorMapper mapper) {
		this.mapper = mapper;
	}

	public List<PrestadorDTO> getAllPrestadores() {
		List<Prestador> lista = prestadoresDAO.getAllPrestadores();
		//mapea y devuelve
		return(mapper.mapearListaPrestadorADTO(lista));
	}

	/*public List<PrestadorDTO> getPrestadoresActivos() {
		List<Prestador> lista = prestadoresDAO.getAllPrestadores();

		//filtra la lista eliminando los inactivos
		List<Prestador> listaFiltrada = new ArrayList<Prestador>();
		for (Prestador prestador : lista) {
			if(prestador.isActivo()){
				listaFiltrada.add(prestador);
			}
		}
		//mapea y devuelve
		return (mapper.mapearListaPrestadorADTO(listaFiltrada));
	}*/
	
	public PrestadorDTO getPrestadorById() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<PrestadorDTO> getPrestadorByNombre() {
		// TODO Auto-generated method stub
		return null;
	}

	public void addPrestador(Prestador prestador) {
		// TODO Auto-generated method stub
		
	}


	
	
}
