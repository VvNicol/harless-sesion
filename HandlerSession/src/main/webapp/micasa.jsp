<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
//aquí pongo todo el código java que quiera que mi servidor ejecute.

String usuario = (String) session.getAttribute("attributo2");
try {  //AQUI VA EL CONTROL DE SESION
 	
    if (usuario == null) {
        response.sendRedirect("index.jsp");
        return;
    } else if (usuario.equals("admin")) {
        response.sendRedirect("bienvenido.jsp");
        return;
    }
 	
} catch (Exception e) {
	response.sendRedirect("cerrarsesion.jsp");
}

%><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mi casa</title>

<link rel="stylesheet" href="common/general.css">

</head>
<body>
<h1>Casa de <%=usuario %></h1>
Sesión iniciada
<hr/>
<!-- <a href="verdatos.jsp">Acceder a los Datos</a><br/>
 --><br/><br/><a href="cerrarsesion.jsp">Salir</a>
</body>
</html>