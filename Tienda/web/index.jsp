<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Seleccione la opción</h1>
        <a href="agregarProd.jsp" class="btn btn-dark">Agregar Producto</a>
        <a href="eliminarProd.jsp" class="btn btn-dark">Eliminar Producto</a>
        <a href="buscarProd.jsp" class="btn btn-dark">Buscar Producto</a>
        <a href="actualizarProd.jsp" class="btn btn-dark">Actualizar Stock</a>
        <a href="agregarVenta.jsp" class="btn btn-dark">Vender</a>
        <a href="verTotal.jsp" class="btn btn-dark">Ver Total de Ventas</a>
        <form action="masVendido" method="post"><button class="btn btn-dark">
            Producto Más Vendido
            </button>
        </form>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
