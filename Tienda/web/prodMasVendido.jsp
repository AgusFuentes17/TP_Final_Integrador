<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda - Más Vendido</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <link rel="icon" href="tienda.ico">
    </head>
    <body>
        
        <header>
            <nav class="navbar fixed-top navbar-expand-lg navbar-dark  bg-dark" style="min-height: 9vh;">
                <a class="navbar-brand" href="/Tienda"><img src="tienda.ico" style="height:5vh"></a>
                <button class="navbar-toggler"  type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon" ></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <div class="mr-auto">
                  </div>
                  <form class="form-inline my-2 my-lg-0" action="Buscar" method="post">
                    <select id="categoria" name="categorias" class="btn btn-light">
                        <option value="">Seleccione Categoría</option>  
                        <option value="Carniceria">Carnicería</option>  
                        <option value="Verduleria">Verdulería</option>  
                        <option value="Panaderia">Panadería</option>
                        <option value="Agua">Agua</option>
                        <option value="Jugo">Jugo</option>
                        <option value="Gaseosa">Gaseosa</option>
                    </select>
                    <input type="submit" value="Filtrar" class="btn btn-light" style="margin-left: 1vh;">
                  </form>
                </div>
            </nav>
        </header>
        
        <h1>El producto más vendido es:</h1>
        <a href="/Tienda">Volver</a>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
