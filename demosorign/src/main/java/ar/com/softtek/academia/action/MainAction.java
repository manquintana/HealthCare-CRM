package ar.com.softtek.academia.action;

import com.opensymphony.xwork2.ActionSupport;

public class MainAction extends ActionSupport {

    private String titulo;

    public String execute() throws Exception {
        return SUCCESS;
    }


    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }
}
