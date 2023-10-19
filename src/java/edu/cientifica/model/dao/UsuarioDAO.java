/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;

import edu.cientifica.model.Usuario;
import java.util.List;

/**
 *
 * @author julio
 */
public interface UsuarioDAO {
    public List<Usuario> findAll();
    public Usuario findByCodigo (String id);
    public int insert (Usuario usuario);
    public int update (Usuario usuario);
    public int delete (String id);
    
    
}
