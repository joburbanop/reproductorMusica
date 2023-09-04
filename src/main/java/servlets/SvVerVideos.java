/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import com.umariana.mundo.Video;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    List<Video> videos=new ArrayList<Video>();
   
    
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
         
         FileInputStream cargar= new FileInputStream(getServletContext().getRealPath("videos.data"));
         ObjectInputStream caragado = new ObjectInputStream(cargar);
        try {
            Video video = (Video) caragado.readObject();
            videos.add(video);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SvVerVideos.class.getName()).log(Level.SEVERE, null, ex);
        }
       //System.out.println("holi "+videos.size());
       caragado.close();
        // Almacenar los datos en la solicitud
        request.setAttribute("videos",videos);

        // Redirigir la solicitud a una página JSP
        request.getRequestDispatcher("mostrarUsuarios.jsp").forward(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
