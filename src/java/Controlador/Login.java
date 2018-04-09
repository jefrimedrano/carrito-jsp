package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        Modelo.UsuarioDB usuariodb = new Modelo.UsuarioDB();
        
        System.out.print(user + pass);
        System.out.print(usuariodb.tipo);
        if (usuariodb.login(user, pass) == true) {
            
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", user);
            sesion.setAttribute("tipo", usuariodb.tipo);
            response.sendRedirect("admin.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
