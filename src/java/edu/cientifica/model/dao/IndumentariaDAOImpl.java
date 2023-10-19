package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;
import edu.cientifica.utils.conexion;
import java.sql.*;
import java.util.*;

public class IndumentariaDAOImpl implements IndumentariaDAO{

    @Override
    public List<Indumentaria> findAll() {
        String sql = "SELECT * FROM Indumentaria";
        List<Indumentaria> listaIndumentaria = new ArrayList<>();
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Indumentaria indumentaria = new Indumentaria ();
                indumentaria.setCodigo(rs.getString("codigo"));
                indumentaria.setNombre(rs.getString("nombre"));
                indumentaria.setMaterial(rs.getString("material"));
                indumentaria.setColor(rs.getString("color"));
                indumentaria.setTalla(rs.getString("talla"));
                indumentaria.setCantidad(Integer.parseInt(rs.getString("Cantidad")));
                indumentaria.setPrecio(Double.parseDouble(rs.getString("Precio")));
                indumentaria.setImagen(rs.getString("imagen"));
                indumentaria.setDescripcion(rs.getString("descripcion"));
                listaIndumentaria.add(indumentaria);
            }
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return listaIndumentaria;
    }

    @Override
    public Indumentaria findByCodigo(String codigo) {
        String sql = "SELECT codigo, nombre, material, color, talla, cantidad, precio, imagen , descripcion FROM INDUMENTARIA WHERE codigo = ? ";
               
        Indumentaria indumentaria = new Indumentaria();
        try {
            
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, codigo);
            ResultSet rs = stmt.executeQuery();   //RSULTSET NO ES UN OBJETO, ES UNA ESTRUCTURA PROPIA DE JDBC NO PODEMOS MANIPULARLA
            if(rs.next()){
                
                indumentaria.setCodigo(rs.getString("codigo"));
                indumentaria.setNombre(rs.getString("nombre"));
                indumentaria.setMaterial(rs.getString("material"));
                indumentaria.setColor(rs.getString("color"));
                indumentaria.setTalla(rs.getString("talla"));
                indumentaria.setCantidad(Integer.parseInt(rs.getString("Cantidad")));
                indumentaria.setPrecio(Double.parseDouble(rs.getString("Precio")));
                indumentaria.setImagen(rs.getString("imagen"));
                indumentaria.setDescripcion(rs.getString("descripcion"));
                
            }
            
        } catch (Exception e) {
            
            System.out.println("Ocurrio un error" + e.getMessage());
        }
                
        return indumentaria;
    }

    @Override
    public int insert(Indumentaria indumentaria) {
        String sql = "INSERT INTO indumentaria (codigo, nombre, material, color, talla, cantidad, precio, imagen , descripcion) VALUES (?,?,?,?,?,?,?,?,?)";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, indumentaria.getCodigo());
            stmt.setString(2, indumentaria.getNombre());
            stmt.setString(3, indumentaria.getMaterial());
            stmt.setString(4, indumentaria.getColor());
            stmt.setString(5, indumentaria.getTalla());
            stmt.setInt(6, indumentaria.getCantidad());
            stmt.setDouble(7, indumentaria.getPrecio());
            stmt.setString(8, indumentaria.getImagen());
            stmt.setString(9, indumentaria.getDescripcion());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int update(Indumentaria indumentaria) {
        String sql = "UPDATE indumentaria Set nombre=?, material=?, color=?, talla=?, cantidad=?, precio=?, imagen=?, descripcion=? WHERE codigo = ?";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            
            stmt.setString(1, indumentaria.getNombre());
            stmt.setString(2, indumentaria.getMaterial());
            stmt.setString(3, indumentaria.getColor());
            stmt.setString(4, indumentaria.getTalla());
            stmt.setInt(5, indumentaria.getCantidad());
            stmt.setDouble(6, indumentaria.getPrecio());
            stmt.setString(7, indumentaria.getImagen());
            stmt.setString(8, indumentaria.getDescripcion());
            stmt.setString(9, indumentaria.getCodigo());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int delete(String codigo) {
        String sql = "DELETE FROM INDUMENTARIA WHERE CODIGO=?";
        int result = 0;
        Connection conn = null;
        try {
            conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, codigo);
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
