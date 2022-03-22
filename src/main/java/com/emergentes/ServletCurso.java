
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletCurso", urlPatterns = {"/ServletCurso"})
public class ServletCurso extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletCurso</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletCurso at " + request.getContextPath() + "</h1>");
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
        
         Curso cu = new Curso();
         
        String nombre = request.getParameter("nombre");
         String apellidos = request.getParameter("apellidos");
           String curso = request.getParameter("curso");
           
            cu.setNombre(nombre);
         cu.setApellidos(apellidos);
         cu.setCurso(curso);
         
         
         
                request.setAttribute("cur", cu);
          request.getRequestDispatcher("SalidaCurso.jsp").forward(request, response);
          
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
