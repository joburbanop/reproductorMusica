<%-- 
    Document   : agregarvideo
    Created on : 29/08/2023, 5:45:27 p. m.
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Agregar video</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header class="navbar navbar-expand-lg fixed-top">
            <div class="container">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp" >
                        <span class="text-primary flex-shrink-0 me-2">
                        <svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                            <path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z"></path>
                        </svg></span>Music
                    </a>
                    <a class="navbar-brand" href="index.jsp">
                        <span class="flex-shrink-0 me-2">inicio</span> 
                    </a>
                </div>
                <div class="form-check form-switch mode-switch order-lg-2 me-3 me-lg-4 ms-auto" data-bs-toggle="mode">
                    <input class="form-check-input" type="checkbox" id="theme-mode">
                    <label class="form-check-label" for="theme-mode"><i class="ai-sun fs-lg"></i></label>
                    <label class="form-check-label" for="theme-mode"><i class="ai-moon fs-lg"></i></label>
                </div>    
            </div>         
        </header>
        
        <section class="container bajar">
            <h1>sistema de reproduccion</h1>
            <form action="SvVideo" method="POST">
                <label for="idVideo">idVideo: </label>
                <input class="form-control" type="text" name="idVideo"><br>

                <label for="titulo">Titulo: </label>
                <input class="form-control" type="text" name="titulo"><br>

                <label for="autor">Autor: </label>
                <input class="form-control" type="text" name="autor"><br>

                <label for="aniho">Año: </label>
                <input class="form-control" type="text" name="aniho"><br>
     
                <label for="categoria">Seleccion categoria del video</label>
                <select class="form-select" type="text" name="categoria">
                    <option value="Country">Country</option>
                    <option value="pop">Pop</option>
                    <option value="Rock">Rock</option>
                    <option value="Hip hop">Hip hop</option>
                    <option value="Blues">Blues</option>
                    <option value="Opera">Opera</option>
                    <option value="Electronica">Electronica</option>
                    <option value="Jazz">Jazz</option>
                </select> <br>

                <label for="url">url</label>
                <input class="form-control" type="text" name="url"><br>
                <label for="Letra">Letra</label>
                <textarea class="form-control" id="id" name="letra" rows="5" cols="10"></textarea><br>
                <input class='btn btn-primary' type="submit" value="Agregar Video">
            </form>
            
    </section>
    
    <script src="Script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  

    </body>
</html>
