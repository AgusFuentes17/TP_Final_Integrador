package modelo;

public class Producto {
    private int idProd;
    private String nombre;
    Categoria categoria;
    private double precio;
    private int cantidad;

    public Producto(String n, Categoria c, double p, int cant) {
        this.nombre = n;
        this.categoria = c;
        this.precio = p;
        this.cantidad = cant;
    }

    public String toString(){
        return ""+this.nombre + this.categoria + this.precio + this.cantidad;
    }
    
}
