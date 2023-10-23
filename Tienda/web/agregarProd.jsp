<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda - Agregar Producto</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Ingrese los atributos:</h1>
        <form action="Agregar" method="post">
            <p>Nombre:</p><textarea></textarea>
            <p>Categoría:</p><select name="categorias" id="categoria">  
		<option value="">Seleccione Categoría</option>  
		<option value="Carniceria">Carnicería</option>  
		<option value="Verduleria">Verdulería</option>  
		<option value="Panaderia">Panadería</option>
                <option value="Agua">Agua</option>
                <option value="Jugo">Jugo</option>
                <option value="Gaseosa">Gaseosa</option>
            </select>
            <p>Precio:</p><input type="number">
            <p>Cantidad:</p><input type="number">
        </form>
        <a href="/Tienda">Volver</a>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
