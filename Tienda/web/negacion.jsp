<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda - Negación</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles.css">
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
        
        <div style="margin-top: 9vh; position: relative;">
            <img class="img fluid imgFondo" src="tienda.jpg" style="width: 100%">
            <div class="text-center" style="background-color: rgba(255, 255, 255, 0.8); width: 60%; top: 25%; position: absolute; margin-left: 20%; margin-right: 20%;">
                <h1>La acción no se pudo realizar correctamente</h1>
            </div>
        </div>
    </body>
</html>
