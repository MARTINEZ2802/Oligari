/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;
import edu.cientifica.model.Personal;
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
public class PersonalDAOImpl implements PersonalDAO{

    @Override
    public List<Personal> findAll() {
        String sql = "SELECT * FROM Personal";
        List<Personal> listaPersonal = new ArrayList<>();
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Personal personal = new Personal ();
                personal.setDni(rs.getString("dni"));
                personal.setNombre(rs.getString("nombre"));
                personal.setApellido(rs.getString("apellido"));
                personal.setTelefono(rs.getString("telefono"));
                personal.setCorreo(rs.getString("correo"));
                personal.setCargo(rs.getString("cargo"));
                personal.setSueldo(Double.parseDouble(rs.getString("sueldo")));
                personal.setDescripcion(rs.getString("descripcion"));
                listaPersonal.add(personal);
            }
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return listaPersonal;
    }

    @Override
    public Personal findByCodigo(String dni) {
        String sql = "SELECT dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion FROM Personal WHERE dni = ? ";
               
        Personal personal = new Personal();
        try {
            
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, dni);
            ResultSet rs = stmt.executeQuery();   //RSULTSET NO ES UN OBJETO, ES UNA ESTRUCTURA PROPIA DE JDBC NO PODEMOS MANIPULARLA
            if(rs.next()){
                
                personal.setDni(rs.getString("dni"));
                personal.setNombre(rs.getString("nombre"));
                personal.setApellido(rs.getString("apellido"));
                personal.setTelefono(rs.getString("telefono"));
                personal.setCorreo(rs.getString("correo"));
                personal.setCargo(rs.getString("Cargo"));
                personal.setSueldo(Double.parseDouble(rs.getString("Sueldo")));
                personal.setDescripcion(rs.getString("descripcion"));
                
            }
            
        } catch (Exception e) {
            
            System.out.println("Ocurrio un error" + e.getMessage());
        }
                
        return personal;
    }

    @Override
    public int insert(Personal personal) {
        String sql = "INSERT INTO personal (dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) VALUES (?,?,?,?,?,?,?,?)";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, personal.getDni());
            stmt.setString(2, personal.getNombre());
            stmt.setString(3, personal.getApellido());
            stmt.setString(4, personal.getTelefono());
            stmt.setString(5, personal.getCorreo());
            stmt.setString(6, personal.getCargo());
            stmt.setDouble(7, personal.getSueldo());
            stmt.setString(8, personal.getDescripcion());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int update(Personal personal) {
        String sql = "UPDATE personal Set nombre=?, apellido=?, telefono=?, correo=?, cargo=?, sueldo=?, descripcion=? WHERE dni = ?";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, personal.getNombre());
            stmt.setString(2, personal.getApellido());
            stmt.setString(3, personal.getTelefono());
            stmt.setString(4, personal.getCorreo());
            stmt.setString(5, personal.getCargo());
            stmt.setDouble(6, personal.getSueldo());
            stmt.setString(7, personal.getDescripcion());
            stmt.setString(8, personal.getDni());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int delete(String dni) {
        String sql = "DELETE FROM Personal WHERE dni=?";
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
