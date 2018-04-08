
package Modelo;


public class Usuario {
    
    private int codigo;
    private String nombre;
    private String correo;
    private String clave;
    private String tipo;

    public Usuario(int codigo, String nombre, String correo, String clave, String tipo) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.correo = correo;
        this.clave = clave;
        this.tipo = tipo;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
