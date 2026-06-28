<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle del Libro</title>
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
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .tarjeta-detalle {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(212, 175, 55, 0.3);
            border-radius: 20px;
            padding: 55px 60px;
            max-width: 520px;
            width: 90%;
            text-align: center;
            backdrop-filter: blur(12px);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
        }

        .icono-grande {
            font-size: 4rem;
            margin-bottom: 20px;
            display: block;
        }

        .etiqueta {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 3px;
            color: #a89070;
            margin-bottom: 8px;
        }

        .titulo-libro {
            font-size: 1.8rem;
            color: #d4af37;
            margin-bottom: 30px;
            line-height: 1.3;
            text-shadow: 0 0 15px rgba(212, 175, 55, 0.3);
        }

        .separador {
            width: 60px;
            height: 2px;
            background: linear-gradient(to right, transparent, #d4af37, transparent);
            margin: 0 auto 28px;
        }

        .etiqueta-autor {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 3px;
            color: #a89070;
            margin-bottom: 8px;
        }

        .nombre-autor {
            font-size: 1.2rem;
            color: #c8b8a2;
            font-style: italic;
            margin-bottom: 40px;
        }

        .mensaje-error {
            background: rgba(180, 60, 60, 0.15);
            border: 1px solid rgba(220, 80, 80, 0.4);
            border-radius: 10px;
            padding: 20px;
            color: #e8a0a0;
            font-size: 1rem;
            margin-bottom: 35px;
        }

        .boton-regresar {
            display: inline-block;
            text-decoration: none;
            background: transparent;
            color: #d4af37;
            border: 1px solid rgba(212, 175, 55, 0.5);
            padding: 12px 32px;
            border-radius: 30px;
            font-size: 0.95rem;
            letter-spacing: 1px;
            transition: all 0.3s ease;
        }

        .boton-regresar:hover {
            background: rgba(212, 175, 55, 0.12);
            border-color: #d4af37;
            box-shadow: 0 0 20px rgba(212, 175, 55, 0.2);
        }
    </style>
</head>
<body>

<div class="tarjeta-detalle">
    <span class="icono-grande">📖</span>

    <%
        String nombreLibro = (String) request.getAttribute("nombreLibro");
        String nombreAutor = (String) request.getAttribute("nombreAutor");
        String mensaje = (String) request.getAttribute("mensaje");

        if (mensaje != null) {
    %>
    <p class="mensaje-error"><%= mensaje %></p>
    <%
        } else {
    %>
    <p class="etiqueta">Título</p>
    <h1 class="titulo-libro"><%= nombreLibro %></h1>
    <div class="separador"></div>
    <p class="etiqueta-autor">Autor</p>
    <p class="nombre-autor"><%= nombreAutor %></p>
    <%
        }
    %>

    <a href="/libros" class="boton-regresar">← Volver a la biblioteca</a>
</div>

</body>
</html>