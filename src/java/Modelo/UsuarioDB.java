
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDB extends Conexion {
    
    
    public boolean login(String user, String clave){
    
     try {
            PreparedStatement cn = null;
            ResultSet rs = null;
            String sql = "SELECT * FROM usuarios";
            
            cn =  Conexion.getConexion().prepareStatement(sql);
            rs = cn.executeQuery(sql);
            System.out.print("clase usuariodb");
            while(rs.next()){
            
                if(user.equals(rs.getString("nombre")) && clave.equals(rs.getString("clave"))){
                   return true;
                } 
            }
            
            return false;
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDB.class.getName()).log(Level.SEVERE, null, ex);
        }

      
     return false;
    }
}
