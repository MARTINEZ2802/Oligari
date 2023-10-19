/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cientifica.model;


public class Personal {
    
    private String dni;
    private String nombre;
    private String apellido;
    private String telefono;
    private String correo;
    private String cargo;
    private double sueldo;
    private String descripcion;

    public Personal() {
    }

    public Personal(String dni, String nombre, String apellido, String telefono, String correo, String cargo, double sueldo, String descripcion) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
        this.cargo = cargo;
        this.sueldo = sueldo;
        this.descripcion = descripcion;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "==PERSONAL==" +"\n" + "dni=" + dni +"\n" +" nombre=" + nombre + "\n"+" apellido=" + apellido +"\n" +" telefono=" + telefono +"\n" + "correo=" + correo + "\n"+"cargo=" + cargo + "\n"+"sueldo=" + sueldo + "\n"+"descripcion=" + descripcion;
    }
 
    
    public Object[] getDatosObjetos(){
        Object[] datos = {dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion};
        
        return datos;
    }
    
    
    
    
}
