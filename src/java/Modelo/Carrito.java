package Modelo;

/**
 *
 * @author jefri
 */
public class Carrito {

    private int id_producto;
    private double precio;
    private int cantidad;
    private int id_usuario;
    private String nombre;

    public Carrito(String nombre, double precio, int cantidad){
        
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
    
    }

    public Carrito(int id_producto, double precio, int cantidad, int id_usuario) {
        this.id_producto = id_producto;
        this.precio = precio;
        this.cantidad = cantidad;
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

}
