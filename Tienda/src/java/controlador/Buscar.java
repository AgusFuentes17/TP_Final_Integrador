package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.GestorBD;
import modelo.Producto;

@WebServlet(name = "Buscar", urlPatterns = {"/Buscar"})
public class Buscar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            String cat = request.getParameter("categorias");
            PrintWriter out = response.getWriter();
        try{
            ArrayList<Producto> productos = new ArrayList<Producto>();
            GestorBD bd = new GestorBD();
            productos = bd.buscarProducto(cat);
            
            if(productos != null){
                out.println("<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"        <title>Tienda</title>\n" +
"        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css\">\n" +
"        <link rel=\"icon\" href=\"tienda.ico\">\n" +
"    </head>\n" +
"    <body>\n" +
"        <header>\n" +
"            <nav class=\"navbar fixed-top navbar-expand-lg navbar-dark  bg-dark\" style=\"min-height: 9vh;\">\n" +
"                <a class=\"navbar-brand\" href=\"/Tienda\"><img src=\"tienda.ico\" style=\"height:5vh\"></a>\n" +
"                <button class=\"navbar-toggler\"  type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n" +
"                  <span class=\"navbar-toggler-icon\" ></span>\n" +
"                </button>\n" +
"\n" +
"                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n" +
"                  <div class=\"mr-auto\">\n" +
"                  </div>\n" +
"                  <form class=\"form-inline my-2 my-lg-0\" action=\"Buscar\" method=\"post\">\n" +
"                    <select id=\"categoria\" name=\"categorias\" class=\"btn btn-light\">\n" +
"                        <option value=\"\">Seleccione Categoría</option>  \n" +
"                        <option value=\"carniceria\">Carnicería</option>  \n" +
"                        <option value=\"verduleria\">Verdulería</option>  \n" +
"                        <option value=\"panaderia\">Panadería</option>\n" +
"                        <option value=\"agua\">Agua</option>\n" +
"                        <option value=\"jugo\">Jugo</option>\n" +
"                        <option value=\"gaseosa\">Gaseosa</option>\n" +
"                    </select>\n" +
"                    <input type=\"submit\" value=\"Filtrar\" class=\"btn btn-light\" style=\"margin-left: 1vh;\">\n" +
"                  </form>\n" +
"                </div>\n" +
"            </nav>\n" +
"        </header>\n" +
"       \n" +
"        <div style=\"margin-top: 9vh; position: relative;\">\n" +
"            <img class=\"img fluid imgFondo\" src=\"tienda.jpg\" style=\"width: 100%\">\n" +
"            <div class=\"text-center\" style=\"background-color: rgba(255, 255, 255, 0.8); width: 60%; top: 8%; position: absolute; margin-left: 20%; margin-right: 20%;\">\n" +
"\n");
                
                out.println("<h1>Servlet Vender at " + productos.toString().replace(",", "\n") + "</h1>");
                out.println("</body>");
                out.println("</html>");

            }else{
                request.getRequestDispatcher("/nofunca.jsp").forward(request, response);
            }
            
        }finally{
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
