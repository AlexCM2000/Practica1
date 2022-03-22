
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletLibro", urlPatterns = {"/ServletLibro"})
public class ServletLibro extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletLibro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletLibro at " + request.getContextPath() + "</h1>");
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

         Libro li = new Libro();
            
             String titulo = request.getParameter("titulo");
             String autor = request.getParameter("autor");
             String resumen = request.getParameter("resumen");
             String medio = request.getParameter("medio");
             
              li.setTitulo(titulo);
              li.setAutor(autor);
              li.setResumen(resumen);
              li.setMedio(medio);
       
         
                request.setAttribute("lib", li);
          request.getRequestDispatcher("SalidaLibro.jsp").forward(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
