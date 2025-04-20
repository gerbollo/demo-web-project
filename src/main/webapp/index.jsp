<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página JSP de ejemplo</title>
</head>
<body>
    <h1>¡Hola desde JSP 😄!</h1>

    <%
        // Obtener nombre desde parámetro del formulario
        String nombre = request.getParameter("nombre");
        java.util.Date fecha = new java.util.Date();
    %>

    <form method="get" action="index.jsp">
        <label for="nombre">Introduce tu nombre:</label>
        <input type="text" name="nombre" id="nombre" required>
        <button type="submit">Saludar</button>
    </form>

    <hr>

    <% if (nombre != null && !nombre.trim().isEmpty()) { %>
        <p>Bienvenido, <strong><%= nombre %></strong> 👋</p>
    <% } else { %>
        <p>Bienvenido, <strong>Invitado</strong> 👋</p>
    <% } %>

    <p>Fecha y hora actual: <%= fecha %></p>
</body>
</html>
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
