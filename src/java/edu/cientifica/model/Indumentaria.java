package edu.cientifica.model;

public class Indumentaria {

    private String codigo;
    private String nombre;
    private String material;
    private String color;
    private String talla;
    private int cantidad;
    private double precio;
    private String imagen;
    private String descripcion;

    public Indumentaria() {
    }

    public Indumentaria(String codigo, String nombre, String material, String color, String talla, int cantidad, double precio, String imagen, String descripcion) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.material = material;
        this.color = color;
        this.talla = talla;
        this.cantidad = cantidad;
        this.precio = precio;
        this.imagen = imagen;
        this.descripcion = descripcion;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }
    
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }    

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    
    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "INDUMENTARIA:" +"\n"+ "Código: " + codigo +"\n"+ "Nombre: " + nombre + "\n"+"Material: " + material +"\n"+ "Color: " + color +"\n"+ "Talla: " + talla + "\n"+"Cantidad: " + cantidad +"\n"+ "Precio: " + precio +"\n"+ "Imagen: " + imagen + "\n"+"Descripcion: " + descripcion;
    }

}

