<%-- 
    Document   : index
    Created on : 29/08/2023, 5:34:38 p. m.
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        

    </head>
    <body >
        
        <header class="navbar navbar-expand-lg fixed-top">
            <div class="container">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp" >
                        <span class="text-primary flex-shrink-0 me-2">
                        <svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                            <path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z"></path>
                        </svg></span>Music
                    </a>
                    <a class="navbar-brand" href="agregarvideo.jsp">
                        <span class="flex-shrink-0 me-2">Agregar video</span> 
                    </a>
                </div>
                
                <div class="container-fluid ">
                   
                </div>
                
                
                <div class="form-check form-switch mode-switch order-lg-2 me-3 me-lg-4 ms-auto" data-bs-toggle="mode">
                    <input class="form-check-input" type="checkbox" id="theme-mode">
                    <label class="form-check-label" for="theme-mode"><i class="ai-sun fs-lg"></i></label>
                    <label class="form-check-label" for="theme-mode"><i class="ai-moon fs-lg"></i></label>
                </div>
                
            </div>
            
           
        </header>
        
        <section class="eleccion">
            <h1>sistema de reproduccion</h1>
            <br><br>  
            <div class="cotenedor">
                <div class="card mb-3 " style="max-width: 18rem; background-color: #0d6efd; margin: 2px">
                    <img src="./imagenes/musci.svg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title" style="color: white">Agregar musica</h5>
                      
                      
                      <p class="card-footer"> <a href="agregarvideo.jsp" class="btn btn-primary">Agregar</a></p>
                   </div>
                </div>
                
                <div class="card mb-3" style="max-width: 18rem; background-color: #0d6efd; margin: 2px">
                    <img src="./imagenes/list.svg" alt="alt"/>
                    <div class="card-body">
                      <h5 class="card-title" style="color: white">videos agregados</h5>
                      <form class="card-footer" action="SvVerVideos" method="POST"> 
                          <input class="btn btn-primary" type="submit" value="ver">
                      </from>
                   </div>
                </div>
                
                
            </div>
            
        </section>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="Script.js"></script>

    </body>
</html>

