package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;
import edu.cientifica.model.Personal;
import java.util.List;

public interface PersonalDAO {
    public List<Personal> findAll();
    public Personal findByCodigo (String dni);
    public int insert (Personal personal);
    public int update (Personal personal);
    public int delete (String dni);
    
    
}
