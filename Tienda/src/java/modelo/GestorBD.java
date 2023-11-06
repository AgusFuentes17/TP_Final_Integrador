package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class GestorBD {
    Connection conn = null;
    Statement stm = null;
    ResultSet rs;
    Producto prod;
    Venta venta;
    Historial hist;
    
    public boolean agregarProducto(String n, Categoria c, Double p, int cant) throws SQLException{
        int resultado;
        try{
            conn = ConectarBD.abrir();
            stm = conn.createStatement();
            String sql = "call agregar_producto_sp('"+n+"', "+cant+" , "+p+", '"+c+"');";
            resultado = stm.executeUpdate(sql);
            if(resultado != 0){
                ConectarBD.cerrar();
                return true;
            }else{
                ConectarBD.cerrar();
                return false;
            }
    }catch (SQLException e){
            System.out.println("Error en la Base de Datos");
            return false;
    }
    }
    
    public ArrayList<Producto> buscarProducto(String cat){
        ArrayList<Producto> productos = new ArrayList<>();
        try{
            conn = ConectarBD.abrir();
            stm = conn.createStatement();
            String sql = "call buscar_producto_sp('"+cat+"');";
            rs = stm.executeQuery(sql);
            if(!rs.next()){
                System.out.println("No se encontró el registro");
                ConectarBD.cerrar();
                return null;
            }else{
                do{
                    String nombre = rs.getString("nombre");
                    Categoria categoria = Categoria.valueOf(rs.getString("categoria"));
                    double precio = rs.getDouble("precio");
                    int cant = rs.getInt("cantidad");
                    Producto p = new Producto(nombre, categoria, precio, cant);
                    productos.add(p);
                }while(rs.next());
                
                ConectarBD.cerrar();
                return productos;
            }
        }catch (SQLException e){
            System.out.println("Error en la base de datos");
            return null;
        }
    }
    
    public boolean eliminarProducto(int id) throws SQLException{
        int resultado;
        try{
            conn = ConectarBD.abrir();
            stm = conn.createStatement();
            String sql = "call eliminar_producto_sp("+id+");";
            resultado = stm.executeUpdate(sql);
            if(resultado != 0){
                ConectarBD.cerrar();
                return true;
            }else{
                ConectarBD.cerrar();
                return false;
            }
    }catch (SQLException e){
            System.out.println("Error en la Base de Datos");
            return false;
    }
        
        
    }
    
    public boolean actualizarProducto(int id, int cant, double precio) throws SQLException{
        int resultado;
        try{
            conn = ConectarBD.abrir();
            stm = conn.createStatement();
            String sql = "call actualizar_producto_sp("+id+","+cant+","+precio+");";
            resultado = stm.executeUpdate(sql);
            if(resultado != 0){
                ConectarBD.cerrar();
                return true;
            }else{
                ConectarBD.cerrar();
                return false;
            }
    }catch (SQLException e){
            System.out.println("Error en la Base de Datos");
            return false;
    }
    }
}
