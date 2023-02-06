package ar.com.softtek.academia.dao;

import ar.com.softtek.academia.entities.Prestador;

import java.util.List;

public interface PrestadoresDAO {
    List<Prestador> getAllPrestadores();
    Prestador getPrestadorById();
    List<Prestador> getPrestadorByNombre();
    void addPrestador(Prestador prestador);
}
