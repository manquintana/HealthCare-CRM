package ar.com.softtek.academia.mapper;

import java.util.ArrayList;
import java.util.List;

import ar.com.softtek.academia.dto.PrestadorDTO;
import ar.com.softtek.academia.entities.Prestador;

public class PrestadorMapper {
	
	public PrestadorDTO getDTO(Prestador p){
		PrestadorDTO dto = new PrestadorDTO();
		dto.setNombre(p.getNombre());
		dto.setApellido(p.getApellido());
		return dto;
	}
	
	public Prestador getPrestador (PrestadorDTO dto){
		Prestador p= new Prestador();
		p.setNombre(dto.getNombre());
		p.setApellido(dto.getApellido());
		return p;
	}
	public List<PrestadorDTO> mapearListaPrestadorADTO(List<Prestador> p){
		List<PrestadorDTO> listaMapeada = new ArrayList<PrestadorDTO>();
		for (Prestador prestador : p) {
			listaMapeada.add(getDTO(prestador));
		}
		return listaMapeada;
	}
	
	
	public PrestadorMapper() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
