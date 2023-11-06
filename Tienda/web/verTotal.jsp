<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda - Total Ventas</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <link rel="icon" href="tienda2.ico">
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
            <div class="text-center" style="background-color: rgba(255, 255, 255, 0.8); width: 60%; top: 15%; position: absolute; margin-left: 20%; margin-right: 20%;">
                <h1>Ingrese las fechas:</h1>
                <form action="Vender" method="post">
                    <div class="form-group row" style="margin-bottom: 2vh">
                        <label for="fechaI" class="col-sm col-form-label" style="margin: 0;">Fecha Inicio:</label>
                        <div class="col-sm">
                          <input type="date" class="btn btn-dark" id="fechaI" placeholder="Ingrese fecha..." min="1" required>
                        </div>
                        <div class="col-sm"></div>
                     </div>
                    
                    <div class="form-group row" style="margin-bottom: 2vh">
                        <label for="fechaF" class="col-sm col-form-label" style="margin: 0;">Fecha Fin:</label>
                        <div class="col-sm">
                          <input type="date" class="btn btn-dark" id="fechaF" placeholder="Ingrese fecha..." min="1" required>
                        </div>
                        <div class="col-sm"></div>
                     </div>
                    <input type="submit" class="btn btn-dark" value="Enviar" style="margin-bottom: 2vh;">
                </form>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
