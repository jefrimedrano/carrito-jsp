
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDB extends Conexion {
    
    public String tipo;
    public int idUsuario;
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
                    idUsuario = rs.getInt("id_usuario");
                    tipo = rs.getString("tipo");
                   return true;
                } 
            }
            
            return false;
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDB.class.getName()).log(Level.SEVERE, null, ex);
        }

      
     return false;
    }
    
    public boolean registro(String nombre, String correo, String  clave){
        String sql = "INSERT INTO usuarios (nombre,correo,clave,tipo) VALUES (?,?,?,?)";
        try {
            
            PreparedStatement cn = Conexion.getConexion().prepareStatement(sql);
            cn.setString(1, nombre);
            cn.setString(2, correo);
            cn.setString(3, clave);
            cn.setString(4, "cliente");
            cn.execute();
            return true;
           
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         return false;
    }
}
