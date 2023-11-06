package modelo;

import java.time.LocalDate;
import java.util.ArrayList;

public class Venta {
    int idVenta;
    LocalDate fechaVenta;
    ArrayList<Producto> productos;

    public Venta(int idVenta, LocalDate fechaVenta, ArrayList<Producto> productos) {
        this.idVenta = idVenta;
        this.fechaVenta = fechaVenta;
        this.productos = productos;
    }
    
}


public double calcularTotalVentas (){
}