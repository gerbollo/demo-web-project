<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página JSP de ejemplo</title>
</head>
<body>
    <h1>Hola desde JSP 😄</h1>

    <%
        // Código Java embebido
        String usuario = "Invitado";
        java.util.Date fecha = new java.util.Date();
    %>

    <p>Bienvenido, <strong><%= usuario %></strong></p>
    <p>Fecha actual: <%= fecha %></p>
</body>
</html>
<html>
<body>
<h2>Hello World!</h2>
</body>
</html>
