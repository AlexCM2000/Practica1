
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletProducto", urlPatterns = {"/ServletProducto"})
public class ServletProducto extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletProducto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Producto pr = new Producto();
            
             String producto = request.getParameter("producto");
             String categoria = request.getParameter("categoria");
             int existencia = Integer.parseInt(request.getParameter("existencia"));
             Double precio = Double.parseDouble(request.getParameter("precio"));
             
              pr.setProducto(producto);
              pr.setCategoria(categoria);
              pr.setExistencia(existencia);
              pr.setPrecio(precio);
       
         
                request.setAttribute("pro", pr);
          request.getRequestDispatcher("SalidaProducto.jsp").forward(request, response);
          
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
