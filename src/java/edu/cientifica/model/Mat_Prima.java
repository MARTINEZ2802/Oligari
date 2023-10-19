
package edu.cientifica.model;


public class Mat_Prima {
    private String codigo;
    private String proveedor;
    private String material;
    private double monto;
    private String medidas;
    private String color;
    private int cantidad;
    private String imagen;
    private String descripcion;
    
    
    //CONSTRUCTOR VACIO

    public Mat_Prima() {
    }
    
    //CONSTRUCTOR CON PARÀMETROS

    public Mat_Prima(String codigo, String proveedor, String material, double monto, String medidas, String color, int cantidad, String imagen, String descripcion) {
        this.codigo = codigo;
        this.proveedor = proveedor;
        this.material = material;
        this.monto = monto;
        this.medidas = medidas;
        this.color = color;
        this.cantidad = cantidad;
        this.imagen = imagen;
        this.descripcion = descripcion;
    }
    
    
    //GET AND SET

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public String getMedidas() {
        return medidas;
    }

    public void setMedidas(String medidas) {
        this.medidas = medidas;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
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
        return "==MATERIA PRIMA=="+ "\n" + "codigo=" + codigo + "\n"+ "proveedor=" + proveedor + "\n"+" material=" + material + "\n"+" monto=" + monto + "\n"+" medidas=" + medidas + "\n"+" color=" + color + "\n"+" cantidad=" + cantidad + "\n"+" imagen=" + imagen + "\n"+" descripcion=" + descripcion ;
    }
    
    
    public Object[] getDatosObjetos(){
        Object[] datos = {codigo, proveedor, material,  monto,medidas, color, cantidad, imagen, descripcion};
        return datos;
    }
}
