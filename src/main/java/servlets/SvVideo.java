
package servlets;

import com.umariana.mundo.Video;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonathan
 */
@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {
    private static List<Video> videos=new ArrayList<>();
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String idVideo=request.getParameter("idVideo");
        //System.out.println(idVideo);
        String  titulo=request.getParameter("titulo");
        //System.out.println(titulo);
        String autor=request.getParameter("autor");
        //System.out.println(autor);
        String aniho=request.getParameter("aniho");
        //System.out.println(aniho);
        String categoria=request.getParameter("categoria");
        //System.out.println(categoria);
        String url=request.getParameter("url");
        //System.out.println(url);
        String letra=request.getParameter("letra");
        //System.out.println(letra);
        Video nuevo=new Video(Integer.parseInt(idVideo),titulo,autor,aniho,categoria,url,letra);
        videos.add(nuevo);
       
        // Get the output stream
         // Create an ObjectOutputStream
        FileOutputStream fileOutputStream = new FileOutputStream(getServletContext().getRealPath("videos.data"),true);
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
        objectOutputStream.writeObject(nuevo);
        
        objectOutputStream.close();
        fileOutputStream.close();
        
       
        // Redirigir a la página index.jsp
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public static List<Video> getVideos() {
   
        return videos;
    }

    public static void  setVideos(List<Video> videos) {
        SvVideo.videos = videos;
    }

    
    
}
