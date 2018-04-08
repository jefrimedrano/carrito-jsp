
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    
    public static  Connection getConexion(){
    
        Connection con = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/p2", "root", "");
            System.out.print("conectado");
            
        } catch (ClassNotFoundException ex) {
           
            System.out.print("error al conectar" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
     return con;
    }
  /* public static void main (String [] agrs) throws SQLException{
    
        Conexion.getConexion();
    }  */
}
