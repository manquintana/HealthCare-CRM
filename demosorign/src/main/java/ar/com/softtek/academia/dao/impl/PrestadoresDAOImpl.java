package ar.com.softtek.academia.dao.impl;

import ar.com.softtek.academia.dao.PrestadoresDAO;
import ar.com.softtek.academia.entities.Prestador;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class PrestadoresDAOImpl implements PrestadoresDAO {

	private SessionFactory sessionFactory;
	
    public List<Prestador> getAllPrestadores() {
        /**List<Prestador> lista = new ArrayList<Prestador>();
        boolean activo=true;
        boolean inactivo=false;
        Prestador p1= new Prestador(1,"Juan", "Gomez",activo);
        Prestador p2= new Prestador(2,"Juana", "Gomera",activo);
        Prestador p3= new Prestador(3,"Esteban", "Quito",inactivo);
        lista.add(p1);
        lista.add(p2);
        lista.add(p3);
    	return lista;**/
    	Session session = sessionFactory.openSession();
        @SuppressWarnings("unchecked")
        int top = (Integer) session.createQuery("select id from Prestador where id=1").uniqueResult();
        System.out.println(top);
       /* List<Prestador> prestadores = session.createQuery("from Prestador").list();*/
        List<Prestador> prestadores = new ArrayList<Prestador>();
        session.close();
        return prestadores;
    }

    public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Prestador getPrestadorById() {
    	
        return null;
    }

    public List<Prestador> getPrestadorByNombre() {
        return null;
    }

    public void addPrestador(Prestador prestador) {

    }

}
