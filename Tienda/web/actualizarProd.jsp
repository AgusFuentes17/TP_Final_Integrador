<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda - Actualizar Producto</title>
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
            <div class="text-center" style="background-color: rgba(255, 255, 255, 0.8); width: 60%; top: 8%; position: absolute; margin-left: 20%; margin-right: 20%;">
                <h1>Ingrese los atributos:</h1>
                <form action="Actualizar" method="post">
                    <div class="form-group row" style="margin-bottom: 2vh">
                        <label for="ID" class="col-sm col-form-label" style="margin: 0;">ID:</label>
                        <div class="col-sm">
                          <input type="number" class="btn btn-dark" id="ID" name="ID" placeholder="Ingrese ID..." min="1" required>
                        </div> 
                        <div class="col-sm"></div>
                     </div>
                    
                    <div class="form-group row" style="margin-bottom: 2vh">
                        <label for="precio" class="col-sm col-form-label" style="margin: 0;">Precio:</label>
                        <div class="col-sm">
                          <input type="number" class="btn btn-dark" id="precio" name="precio" placeholder="Ingrese precio..." min="0" required>
                        </div>
                        <div class="col-sm"></div>
                     </div>
                    
                    <div class="form-group row" style="margin-bottom: 2vh">
                        <label for="cantidad" class="col-sm col-form-label" style="margin: 0;">Cantidad:</label>
                        <div class="col-sm">
                          <input type="number" class="btn btn-dark" id="cantidad" name="cantidad" placeholder="Ingrese cantidad..." min="1" required>
                        </div>
                        <div class="col-sm"></div>
                     </div>
                    
                    <input type="submit" class="btn btn-dark" value="Enviar" style="margin-bottom: 2vh;">
                </form>
            </div>
        </div>
        
        
        <footer class="bg-dark text-white">
            <p style="margin: 0;">Hola</p>
        </footer>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
