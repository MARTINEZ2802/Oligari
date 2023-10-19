package edu.cientifica.model.dao;

import edu.cientifica.model.Cliente;
import edu.cientifica.utils.conexion;
import java.sql.*;
import java.util.*;

public class ClienteDAOImpl implements ClienteDAO{

    @Override
    public List<Cliente> findAll() {
        String sql = "SELECT * FROM Cliente";
        List<Cliente> listaCliente = new ArrayList<>();
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Cliente cliente = new Cliente();
                
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setDni(rs.getString("dni"));
                cliente.setCelular(rs.getString("celular"));
                cliente.setCorreo(rs.getString("correo"));
               
                listaCliente.add(cliente);
            }
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return listaCliente;
    }

    @Override
    public Cliente findByCodigo(String codigo) {
        String sql = "SELECT nombre,apellido,dni,celular,correo FROM Cliente WHERE dni = ? ";
               
        Cliente cliente = new Cliente();
        try {
            
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, codigo);
            ResultSet rs = stmt.executeQuery();   //RSULTSET NO ES UN OBJETO, ES UNA ESTRUCTURA PROPIA DE JDBC NO PODEMOS MANIPULARLA
            if(rs.next()){
                 cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setDni(rs.getString("dni"));
                cliente.setCelular(rs.getString("celular"));
                cliente.setCorreo(rs.getString("correo"));
                
                
            }
            
        } catch (Exception e) {
            
            System.out.println("Ocurrio un error" + e.getMessage());
        }
                
        return cliente;
    }

    @Override
    public int insert(Cliente cliente) {
        String sql = "INSERT INTO cliente (nombre,apellido,dni,celular,correo) VALUES (?,?,?,?,?)";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getApellido());
            stmt.setString(3, cliente.getDni());
            stmt.setString(4, cliente.getCelular());
            stmt.setString(5, cliente.getCorreo());
            
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int update(Cliente cliente) {
        String sql = "UPDATE cliente Set nombre=?, apellido=?, celular=?, correo=? WHERE dni = ?";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getApellido());
            stmt.setString(3, cliente.getCelular());
            stmt.setString(4, cliente.getCorreo());
            stmt.setString(5, cliente.getDni());
            
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int delete(String dni) {
        String sql = "DELETE FROM Cliente WHERE dni=?";
        int result = 0;
        Connection conn = null;
        try {
            conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, dni);
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
