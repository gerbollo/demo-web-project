<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página JSP Mejorada</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 30px;
        }
        h1 {
            color: #2c3e50;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            width: 500px;
        }
        .reloj {
            font-size: 1.2em;
            color: #e67e22;
        }
    </style>
    <script>
        // Reloj en tiempo real
        function actualizarReloj() {
            const reloj = document.getElementById("reloj");
            const ahora = new Date();
            reloj.innerText = ahora.toLocaleTimeString();
        }
        setInterval(actualizarReloj, 1000);
    </script>
</head>
<body>
    <div class="container">
        <h1>¡Bienvenido a tu primera página JSP!</h1>

        <p class="reloj">Hora actual del navegador: <span id="reloj">--:--:--</span></p>

        <%
            // Solo una declaración de fecha
            java.util.Date fechaServidor = new java.util.Date();
            String nombre = request.getParameter("nombre");
        %>

        <form method="get" action="index.jsp">
            <label for="nombre">Introduce tu nombre:</label>
            <input type="text" name="nombre" id="nombre" required>
            <button type="submit">Saludar</button>
        </form>

        <hr>

        <% if (nombre != null && !nombre.trim().isEmpty()) { %>
            <p>Hola, <strong><%= nombre %></strong> 👋 ¡Gracias por visitar esta página!</p>
        <% } else { %>
            <p>Hola, <strong>Invitado</strong> 👋</p>
        <% } %>

        <p>Fecha del servidor: <%= fechaServidor %></p>
    </div>
</body>
</html>
