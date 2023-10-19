package edu.cientifica.model.dao;

import edu.cientifica.model.Cliente;
import java.util.*;

public interface ClienteDAO {
    public List<Cliente> findAll();
    public Cliente findByCodigo (String dni);
    public int insert (Cliente Cliente);
    public int update (Cliente cliente);
    public int delete (String dni);
}
