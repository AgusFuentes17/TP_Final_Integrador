package modelo;

public class Bebida extends Producto {

    public Bebida(String n, Categoria c, double p, int cant) {
        super(n, c, p, cant);
    }

    @Override
    public String toString() {
        return "Bebida{" + '}';
    }
    
}
