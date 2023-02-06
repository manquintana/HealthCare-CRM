package ar.com.softtek.academia.action;

import ar.com.softtek.academia.bo.PrestadoresBO;
import ar.com.softtek.academia.dao.PrestadoresDAO;
import ar.com.softtek.academia.dto.PrestadorDTO;
import ar.com.softtek.academia.entities.Prestador;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class PrestadoresAction extends ActionSupport {

    private PrestadoresBO prestadoresBO;
    private List<PrestadorDTO> prestadores;
   private List<PrestadorDTO> prestadoresActivos;
    

    public List<PrestadorDTO> getPrestadoresActivos() {
	return prestadoresActivos;
}

public void setPrestadoresActivos(List<PrestadorDTO> prestadoresActivos) {
	this.prestadoresActivos = prestadoresActivos;
}

	public String execute() throws Exception {
        this.prestadores=this.prestadoresBO.getAllPrestadores(); 
        /** this.prestadoresActivos=this.prestadoresBO.getPrestadoresActivos();**/
        return SUCCESS;
    }

	public PrestadoresBO getPrestadoresBO() {
		return prestadoresBO;
	}

	public void setPrestadoresBO(PrestadoresBO prestadoresBO) {
		this.prestadoresBO = prestadoresBO;
	}

	public List<PrestadorDTO> getPrestadores() {
		return prestadores;
	}

	public void setPrestadores(List<PrestadorDTO> prestadores) {
		this.prestadores = prestadores;
	}


}
