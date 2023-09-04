/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import com.umariana.mundo.Video;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlets.SvVideo;
/**
 *
 * @author jonathan
 */
@WebServlet(name = "SvVerVideos", urlPatterns = {"/SvVerVideos"})
public class SvVerVideos extends HttpServlet {
    
    private List<Video> videos;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
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
         // Obtener los datos del servidor
       System.out.println("holi "+SvVideo.getVideos().size());

        // Almacenar los datos en la solicitud
        request.setAttribute("videos",SvVideo.getVideos());

        // Redirigir la solicitud a una página JSP
        request.getRequestDispatcher("mostrarUsuarios.jsp").forward(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
