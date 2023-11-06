package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectarBD {
    private static Connection connect;
    private static String bd = "Tienda";
    private static String user = "root";
    private static String contra = "";
    private static String url = "jdbc:mysql://localhost/" + bd;
    
    public static Connection abrir() throws SQLException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connect = DriverManager.getConnection(url, user, contra);
        } catch(ClassNotFoundException e){
            System.out.println("Error: No se pudo cargar el controlador JDBC.");
            throw new SQLException("Error en la conexión", e);
        }
        return connect;
    }
    
    public static void cerrar(){
        try{
            if (connect != null)
                connect.close();
        }catch(SQLException e){
            System.out.println("Error: No se logró cerrar la conexión:\n" + e);
        }
    }
}
