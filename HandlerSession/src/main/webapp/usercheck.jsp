<%@page import="jakarta.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
//aquí pongo todo el código java que quiera que mi servidor ejecute.


    // Declarar la variable de usuario
    String usuario = null;

    // Obtener la sesión actual
    //HttpSession sesion = request.getSession(false);
    if (session != null) {
        // Obtener el atributo "attributo2" de la sesión
        usuario = (String) session.getAttribute("attributo2");
    }


%><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session checker</title>

<link rel="stylesheet" href="common/general.css">

</head>
<body>
<h1>Autentificación</h1>
<p>Verificando si usted está autenticado...</p>
<hr/>
<% if (usuario == null || usuario.isEmpty()) { %>
    <p>Usted NO está autenticado</p>
<% } else { %>
    <p>Usted SÍ está autenticado. Bienvenido, <%= usuario %></p>
<% } %>
</body>
</html>