package edu.cientifica.utils;

import java.sql.*;


public class conexion {
    private static Connection conexion = null;
    private String usuario;
    private String password;
    private String basededatos;
    private String url;
    private String driver;

    private conexion() {
        usuario = "root";
        password = "123456";
        url = "jdbc:mysql://localhost:3306/oliari";
        basededatos = "oliari";
        driver = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(driver);
            conexion = DriverManager.getConnection(url, usuario, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    
    public static Connection getConnection() throws SQLException{
        if(conexion == null  ||  conexion.isClosed()){
            new conexion();
        }
        return conexion;
    }
    
}
