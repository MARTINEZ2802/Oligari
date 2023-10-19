/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cientifica.model;


public class Usuario {
    
    private String id;
    private String contra;

    public Usuario() {
    }

    public Usuario(String id, String contra) {
        this.id=id;
        this.contra=contra;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

   

    @Override
    public String toString() {
        return "==USUARIO==" +"\n" + "ID=" + id +"\n" +" CONTRA=" + contra ;
    }
 
    
    public Object[] getDatosObjetos(){
        Object[] datos = {id,contra};
        
        return datos;
    }
    
    
    
    
}
