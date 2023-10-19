package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;
import edu.cientifica.model.Mat_Prima;
import edu.cientifica.utils.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Mat_PrimaDAOImpl implements Mat_PrimaDAO {

    @Override
    public List<Mat_Prima> findAll() {
        String sql = "SELECT * FROM Materia";
        List<Mat_Prima> listamateria = new ArrayList<>();
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Mat_Prima materia = new Mat_Prima ();
                materia.setCodigo(rs.getString("codigo"));
                materia.setMaterial(rs.getString("material"));
                materia.setProveedor(rs.getString("proveedor"));
                materia.setMonto(Double.parseDouble(rs.getString("Monto")));
                materia.setMedidas(rs.getString("medidas"));
                materia.setColor(rs.getString("color"));
                materia.setCantidad(Integer.parseInt(rs.getString("Cantidad")));
                materia.setImagen(rs.getString("imagen"));
                materia.setDescripcion(rs.getString("descripcion"));
                listamateria.add(materia);
            }
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return listamateria;
    }

    @Override
    public Mat_Prima findByCodigo(String codigo) {
        String sql = "SELECT codigo, material, proveedor, monto, medidas, color, cantidad, imagen , descripcion FROM Materia WHERE codigo = ? ";
               
        Mat_Prima materia = new Mat_Prima();
        try {
            
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, codigo);
            ResultSet rs = stmt.executeQuery();   //RSULTSET NO ES UN OBJETO, ES UNA ESTRUCTURA PROPIA DE JDBC NO PODEMOS MANIPULARLA
            if(rs.next()){
                
                materia.setCodigo(rs.getString("codigo"));
                materia.setMaterial(rs.getString("material"));
                materia.setColor(rs.getString("proveedor"));
                materia.setMonto(Double.parseDouble(rs.getString("Monto")));
                materia.setMedidas(rs.getString("medidas"));
                materia.setColor(rs.getString("color"));
                materia.setCantidad(Integer.parseInt(rs.getString("Cantidad")));
                materia.setImagen(rs.getString("imagen"));
                materia.setDescripcion(rs.getString("descripcion"));
                
            }
            
        } catch (Exception e) {
            
            System.out.println("Ocurrio un error" + e.getMessage());
        }
                
        return materia;
    }

    @Override
    public int insert(Mat_Prima mate_prima) {
        String sql = "INSERT INTO materia (codigo, material, proveedor, monto, medidas, color, cantidad, imagen , descripcion) VALUES (?,?,?,?,?,?,?,?,?)";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, mate_prima.getCodigo());
            stmt.setString(2, mate_prima.getMaterial());
            stmt.setString(3, mate_prima.getProveedor());
            stmt.setDouble(4, mate_prima.getMonto());
            stmt.setString(5, mate_prima.getMedidas());
            stmt.setString(6, mate_prima.getColor());
            stmt.setInt(7, mate_prima.getCantidad());
            stmt.setString(8, mate_prima.getImagen());
            stmt.setString(9, mate_prima.getDescripcion());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int update(Mat_Prima mate_prima) {
        String sql = "UPDATE materia Set material=?, proveedor=?, monto=?, medidas=?, color=?, cantidad=?, imagen=?, descripcion=? WHERE codigo = ?";
        int result = 0;
        
        try {
            Connection conn = conexion.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, mate_prima.getMaterial());
            stmt.setString(2, mate_prima.getProveedor());
            stmt.setDouble(3, mate_prima.getMonto());
            stmt.setString(4, mate_prima.getMedidas());
            stmt.setString(5, mate_prima.getColor());
            stmt.setInt(6, mate_prima.getCantidad());
            stmt.setString(7, mate_prima.getImagen());
            stmt.setString(8, mate_prima.getDescripcion());
            stmt.setString(9, mate_prima.getCodigo());
            result = stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Ocurrió un error" + e.getMessage());
        }
        return result;
    }

    @Override
    public int delete(String codigo) {
        String sql = "DELETE FROM Materia WHERE CODIGO=?";
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
