package modelo;

import java.time.LocalDate;

public class Historial {
    int idHistoria;
    LocalDate fechaHsitorial;
    int cantVentas;
    Producto prod;

    public Historial(int idHistoria, LocalDate fechaHsitorial, int cantVentas, Producto prod) {
        this.idHistoria = idHistoria;
        this.fechaHsitorial = fechaHsitorial;
        this.cantVentas = cantVentas;
        this.prod = prod;
    }
    
    
}
