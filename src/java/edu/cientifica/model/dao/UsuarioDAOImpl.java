/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cientifica.model.dao;

import edu.cientifica.model.Usuario;
import edu.cientifica.utils.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author julio
 */
public class UsuarioDAOImpl implements UsuarioDAO{

    @Override
    public List<Usuario> findAll() {
        String sql = "SELECT * FROM Usuario";
        List<Usuario> listaUsuario = new ArrayList<>();
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Usuario usuario = new Usuario ();
                usuario.setId(rs.getString("id"));
                usuario.setContra(rs.getString("contra"));
                listaUsuario.add(usuario);
            }
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return listaUsuario;
    }

    @Override
    public Usuario findByCodigo(String id) {
        String sql = "SELECT id,contra FROM Usuario WHERE id = ? ";
               
        Usuario usuario = new Usuario();
        try {
            
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();   //RSULTSET NO ES UN OBJETO, ES UNA ESTRUCTURA PROPIA DE JDBC NO PODEMOS MANIPULARLA
            if(rs.next()){
                usuario.setId(rs.getString("id"));
                usuario.setContra(rs.getString("contra"));
             
                
            }
            
        } catch (Exception e) {
            
            System.out.println("Ocurrio un error" + e.getMessage());
        }
                
        return usuario;
    }

    @Override
    public int insert(Usuario usuario) {
        String sql = "INSERT INTO Usuario (id, contra) VALUES (?,?)";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getId());
            stmt.setString(2, usuario.getContra());
            
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int update(Usuario usuario) {
        String sql = "UPDATE Usuario Set id=?, contra=? WHERE id = ?";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getId());
            stmt.setString(2, usuario.getContra());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int delete(String id) {
        String sql = "DELETE FROM Usuario WHERE id=?";
        int result = 0;
        Connection conn = null;
        try {
            conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("ocurrio un error " + e.getMessage());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    System.out.println(ex.getMessage());
                }
            }
        }
        return result;
    }
    
}
