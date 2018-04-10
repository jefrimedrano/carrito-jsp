
package Modelo;

/**
 *
 * @author jefri
 */
public class Ventas{
    
    private int id_ventas;
    private int id_producto;
    private double precio;
    private int id_usuario;
    private String fecha;

    public Ventas(int id_ventas, int id_producto, double precio, int id_usuario, String fecha) {
        this.id_ventas = id_ventas;
        this.id_producto = id_producto;
        this.precio = precio;
        this.id_usuario = id_usuario;
        this.fecha = fecha;
    }

    
    
    public int getId_ventas() {
        return id_ventas;
    }

    public void setId_ventas(int id_ventas) {
        this.id_ventas = id_ventas;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
}
