
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jefri
 */
public class CarritoDB extends Conexion {
    
    UsuarioDB p = new UsuarioDB();
    
    public static ArrayList<Carrito> listaCarrito(int codigo){
        
        ArrayList<Carrito> lista = new ArrayList<Carrito>();
        try {
            
            String sql = "SELECT productos.nombre, carrito.precio, carrito.cantidad FROM `carrito` inner join productos on productos.id_productos = carrito.id_producto WHERE carrito.id_usuario ="+codigo;
            Statement cn = Conexion.getConexion().prepareStatement(sql);
            ResultSet rs = cn.executeQuery(sql);
            
             while (rs.next()) {
                Carrito p = new Carrito(rs.getString(1), rs.getDouble(2), rs.getInt(3));
                System.out.print(p);
                lista.add(p);

            }
           
        } catch (SQLException ex) {
            Logger.getLogger(CarritoDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         return lista;
    }
    
    public static ArrayList<Carrito> lista(int codigo){
        
        ArrayList<Carrito> lista = new ArrayList<Carrito>();
        try {
            
            String sql = "SELECT * FROM `carrito` WHERE id_usuario ="+codigo;
            Statement cn = Conexion.getConexion().prepareStatement(sql);
            ResultSet rs = cn.executeQuery(sql);
            
             while (rs.next()) {
                Carrito p = new Carrito(rs.getInt(1), rs.getDouble(2), rs.getInt(3), rs.getInt(4));
                System.out.print(p);
                lista.add(p);

            }
           
        } catch (SQLException ex) {
            Logger.getLogger(CarritoDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         return lista;
    }
    
    public static boolean agregar(int id, double precio, int cantidad, int id_usuario){
    
        PreparedStatement cn = null;
        try {
            String sql = "INSERT INTO carrito (id_producto,precio,cantidad,id_usuario) VALUES (?,?,?,?)";
            cn = Conexion.getConexion().prepareStatement(sql);
            cn.setInt(1, id);
            cn.setDouble(2, precio);
            cn.setInt(3,cantidad);
            cn.setInt(4,id_usuario);
            cn.execute();
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(CarritoDB.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                cn.close();
            } catch (SQLException ex) {
                Logger.getLogger(CarritoDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return false;
    }
    
    public static boolean eliminar(int codigo){
        try {
            
            String sql = "DELETE FROM `carrito` WHERE id_usuario="+codigo;
            PreparedStatement cn = Conexion.getConexion().prepareStatement(sql);
            cn.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CarritoDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
    }
}
