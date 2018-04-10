
package Modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jefri
 */
public class VentasDB extends Conexion{
    
    public static boolean insertar(int id_producto, double precio, int cantidad, int id_usuario, String fecha){
     
        String sql = "INSERT INTO `ventas`(`id_producto`, `precio`, `cantidad`, `id_usuario`, `fecha`) VALUES (?,?,?,?,?)";
        try {
           
            
            PreparedStatement cn = Conexion.getConexion().prepareStatement(sql);
            cn.setInt(1, id_producto);
            cn.setDouble(2, precio);
            cn.setInt(3, cantidad);
            cn.setInt(4, id_usuario);
            cn.setString(5, fecha);
            cn.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(VentasDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
    }
}
