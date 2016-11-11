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

    <h1>Registrar</h1>

    <div class = "panel panel-default">
        <div class = "panel-body">
            <g:form controller="usuario" action="registrar">
                <g:select name="usuario"
                          optionValue="nombre"
                          optionKey="id"
                          value="nombre"
                          from="${Usuario.list()}"
                           />
                <g:select name="evento"
                          from="${Evento.list()}"
                          optionValue="nombre"
                          optionKey="id"
                />
                <g:actionSubmit value="Registrar"/>
            </g:form>
            <br>
        </div>
    </div>

</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>