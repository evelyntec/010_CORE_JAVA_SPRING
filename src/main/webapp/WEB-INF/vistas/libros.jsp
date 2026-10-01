<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap, java.util.Map" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Biblioteca</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
            min-height: 100vh;
            font-family: 'Georgia', serif;
            color: #e0d5c5;
        }

        .encabezado {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(212, 175, 55, 0.3);
            padding: 25px 40px;
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .encabezado .icono-libro {
            font-size: 2.5rem;
        }

        .encabezado h1 {
            font-size: 2rem;
            color: #d4af37;
            letter-spacing: 2px;
            text-shadow: 0 0 20px rgba(212, 175, 55, 0.4);
        }

        .encabezado p {
            font-size: 0.9rem;
            color: #a89070;
            margin-top: 4px;
        }

        .contenedor-principal {
            max-width: 860px;
            margin: 50px auto;
            padding: 0 20px;
        }

        .barra-acciones {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 28px;
        }

        .boton-agregar {
            background: linear-gradient(135deg, #d4af37, #b8860b);
            color: #1a1a2e;
            text-decoration: none;
            padding: 12px 28px;
            border-radius: 30px;
            font-weight: bold;
            font-size: 0.95rem;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(212, 175, 55, 0.35);
            transition: all 0.3s ease;
        }

        .boton-agregar:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(212, 175, 55, 0.55);
        }

        .tarjeta-lista {
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid rgba(212, 175, 55, 0.2);
            border-radius: 16px;
            padding: 35px;
            backdrop-filter: blur(8px);
        }

        .tarjeta-lista h2 {
            font-size: 1.1rem;
            color: #a89070;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 24px;
            padding-bottom: 14px;
            border-bottom: 1px solid rgba(212, 175, 55, 0.2);
        }

        ul {
            list-style: none;
        }

        ul li {
            border-bottom: 1px solid rgba(255, 255, 255, 0.06);
            transition: background 0.2s ease;
        }

        ul li:last-child {
            border-bottom: none;
        }

        ul li:hover {
            background: rgba(212, 175, 55, 0.07);
            border-radius: 8px;
        }

        ul li a {
            display: block;
            padding: 16px 14px;
            text-decoration: none;
            color: #e0d5c5;
            font-size: 1.05rem;
            transition: color 0.2s ease;
        }

        ul li a::before {
            content: '📖 ';
        }

        ul li a:hover {
            color: #d4af37;
        }

        .sin-libros {
            text-align: center;
            color: #a89070;
            font-style: italic;
            padding: 30px;
        }

        footer {
            text-align: center;
            color: #5a5070;
            font-size: 0.8rem;
            padding: 30px;
            margin-top: 60px;
        }
    </style>
</head>
<body>

<div class="encabezado">
    <span class="icono-libro">📚</span>
    <div>
        <h1>Mi Biblioteca</h1>
        <p>Colección personal de libros</p>
    </div>
</div>

<div class="contenedor-principal">
    <div class="barra-acciones">
        <a href="/formulario/libro" class="boton-agregar">+ Agregar libro</a>
    </div>

    <div class="tarjeta-lista">
        <h2>Lista de libros</h2>

        <%
            HashMap<String, String> libros = (HashMap<String, String>) request.getAttribute("libros");
            if (libros != null && !libros.isEmpty()) {
        %>
        <ul>
            <% for (Map.Entry<String, String> entrada : libros.entrySet()) { %>
            <li>
                <a href="/libros/<%= java.net.URLEncoder.encode(entrada.getKey(), "UTF-8") %>">
                    <%= entrada.getKey() %>
                </a>
            </li>
            <% } %>
        </ul>
        <%
            } else {
        %>
        <p class="sin-libros">No hay libros en la lista todavía.</p>
        <% } %>
    </div>
</div>

<footer>
    Biblioteca Personal &copy; 2026
</footer>

</body>
</html>