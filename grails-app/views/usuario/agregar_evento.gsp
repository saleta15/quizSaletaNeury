<%@ page import="practica13.Evento; practica13.Usuario" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>

<div class="container" id="contenedorCrearUsuario">

    <h1>Registrar Usuario a un Evento</h1>

    <div class = "panel panel-default">
        <div class = "panel-body">
            <g:form controller="usuario" action="registrar">

                <label  for="usuario">Usuario:</label>
                <g:select class="form-control" name="usuario"
                          optionValue="nombre"
                          optionKey="id"
                          value="nombre"
                          from="${Usuario.list()}"
                           />
                <br>
                <label >Evento:</label>
                <g:select class="form-control" name="evento"
                          from="${Evento.list()}"
                          optionValue="nombre"
                          optionKey="id"
                />
                <br>
                <g:actionSubmit value="Registrar" class="btn btn-info"/>
            </g:form>
            <br>
        </div>
    </div>

</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>