<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
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
                        <option value="carniceria">Carnicería</option>  
                        <option value="verduleria">Verdulería</option>  
                        <option value="panaderia">Panadería</option>
                        <option value="agua">Agua</option>
                        <option value="jugo">Jugo</option>
                        <option value="gaseosa">Gaseosa</option>
                    </select>
                    <input type="submit" value="Filtrar" class="btn btn-light" style="margin-left: 1vh;">
                  </form>
                </div>
            </nav>
        </header>
       
        <div style="margin-top: 9vh; position: relative;">
            <img class="img fluid imgFondo" src="tienda.jpg" style="width: 100%">
            <div class="text-center" style="background-color: rgba(255, 255, 255, 0.8); width: 60%; top: 8%; position: absolute; margin-left: 20%; margin-right: 20%;">

                <h1 style="width: 100%; margin:auto;">Seleccione la opción</h1>
                
                <div class="row" style="margin-top: 2vh;">

                    <div class="col-sm" style="width: 100%; margin:0;">
                        <a href="agregarProd.jsp" class="btn btn-dark">Agregar Producto</a>
                    </div>
                    <div class="col-sm" style="width: 100%; margin:0;">
                        <a href="eliminarProd.jsp" class="btn btn-dark">Eliminar Producto</a>
                    </div> 

                </div>
                
                <div class="row" style="margin-top: 2vh;">

                    <div class="col-sm">
                        <a href="actualizarProd.jsp" class="btn btn-dark">Actualizar Stock</a>
                    </div>
                    <div class="col-sm">
                        <a href="agregarVenta.jsp" class="btn btn-dark">Vender</a>
                    </div>

                </div>
                
                <div class="row" style="margin-top: 2vh; margin-bottom: 2vh;">

                    <div class="col-sm">
                        <a href="verTotal.jsp" class="btn btn-dark">Ver Total de Ventas</a>
                    </div>
                    <div class="col-sm">
                        <form action="MasVendido" method="post">
                            <button class="btn btn-dark">
                                Producto Más Vendido
                            </button>
                        </form>
                    </div>

                </div>
                
                
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
