package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductosDB extends Conexion {

    public static ArrayList<Productos> obtenerProductos() {

        ArrayList<Productos> Lista = new ArrayList<Productos>();
        try {

            Statement cn = null;
            String sql = "SELECT * FROM productos";

            cn = Conexion.getConexion().prepareStatement(sql);
            ResultSet rs = cn.executeQuery(sql);

            while (rs.next()) {
                Productos p = new Productos(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDouble(4), rs.getString(5));
                System.out.print(p);
                Lista.add(p);

            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductosDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Lista;
    }

    public static Productos obtenerid(int codigo) {

        String sql = "SELECT * FROM productos WHERE id_productos = ?";
        Productos productos = null;
         PreparedStatement cn = null;
        try {

            cn = Conexion.getConexion().prepareStatement(sql);
            cn.setInt(1,codigo);
            ResultSet rs = cn.executeQuery(sql);
            
             while (rs.next()) {
                productos  = new Productos(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDouble(4), rs.getString(5));
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductosDB.class.getName()).log(Level.SEVERE, null, ex);
        }

        return productos;
    }

}
