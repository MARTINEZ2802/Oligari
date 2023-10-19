package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;
import java.util.*;

public interface IndumentariaDAO {
    public List<Indumentaria> findAll();
    public Indumentaria findByCodigo (String dni);
    public int insert (Indumentaria Indumentaria);
    public int update (Indumentaria indumentaria);
    public int delete (String codigo);
}
