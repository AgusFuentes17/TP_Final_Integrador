<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
    </head>
    <body>
        <h1>Seleccione la opción</h1>
        <a href="agregarProd.jsp">Agregar Producto</a>
        <a href="eliminarProd.jsp">Eliminar Producto</a>
        <a href="buscarProd.jsp">Buscar Producto</a>
        <a href="actualizarProd.jsp">Actualizar Stock</a>
        <a href="agregarVenta.jsp">Vender</a>
        <a href="verTotal.jsp">Ver Total de Ventas</a>
        <form action="masVendido" method="post"><button>
            Producto Más Vendido
            </button>
        </form>
    </body>
</html>
