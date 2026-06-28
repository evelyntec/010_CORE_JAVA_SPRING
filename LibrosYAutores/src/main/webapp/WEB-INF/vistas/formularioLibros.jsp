<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Libro</title>
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
            align-items: center;
            justify-content: center;
        }

        .contenedor-formulario {
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid rgba(212, 175, 55, 0.25);
            border-radius: 20px;
            padding: 50px 55px;
            max-width: 480px;
            width: 90%;
            backdrop-filter: blur(12px);
            box-shadow: 0 25px 70px rgba(0, 0, 0, 0.45);
        }

        .titulo-formulario {
            text-align: center;
            margin-bottom: 38px;
        }

        .titulo-formulario span {
            font-size: 2.8rem;
            display: block;
            margin-bottom: 12px;
        }

        .titulo-formulario h2 {
            font-size: 1.5rem;
            color: #d4af37;
            letter-spacing: 2px;
        }

        .titulo-formulario p {
            color: #a89070;
            font-size: 0.88rem;
            margin-top: 6px;
        }

        .grupo-campo {
            margin-bottom: 26px;
        }

        .grupo-campo label {
            display: block;
            font-size: 0.78rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            color: #a89070;
            margin-bottom: 9px;
        }

        .grupo-campo input[type="text"] {
            width: 100%;
            padding: 14px 18px;
            background: rgba(255, 255, 255, 0.06);
            border: 1px solid rgba(212, 175, 55, 0.2);
            border-radius: 10px;
            color: #e0d5c5;
            font-size: 1rem;
            font-family: 'Georgia', serif;
            outline: none;
            transition: all 0.3s ease;
        }

        .grupo-campo input[type="text"]::placeholder {
            color: #5a5068;
            font-style: italic;
        }

        .grupo-campo input[type="text"]:focus {
            border-color: rgba(212, 175, 55, 0.6);
            background: rgba(255, 255, 255, 0.09);
            box-shadow: 0 0 18px rgba(212, 175, 55, 0.12);
        }

        .linea-divisora {
            border: none;
            border-top: 1px solid rgba(255, 255, 255, 0.07);
            margin: 30px 0;
        }

        .boton-guardar {
            width: 100%;
            padding: 15px;
            background: linear-gradient(135deg, #d4af37, #b8860b);
            color: #1a1a2e;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-family: 'Georgia', serif;
            font-weight: bold;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-bottom: 14px;
        }

        .boton-guardar:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(212, 175, 55, 0.4);
        }

        .boton-regresar {
            display: block;
            text-align: center;
            text-decoration: none;
            color: #a89070;
            font-size: 0.9rem;
            padding: 10px;
            border-radius: 8px;
            transition: color 0.2s ease;
        }

        .boton-regresar:hover {
            color: #d4af37;
        }
    </style>
</head>
<body>

<div class="contenedor-formulario">
    <div class="titulo-formulario">
        <span>✍️</span>
        <h2>Nuevo Libro</h2>
        <p>Agrega un libro a tu colección</p>
    </div>

    <form action="/procesa/libro" method="post">
        <div class="grupo-campo">
            <label for="nombreLibro">Título del libro</label>
            <input type="text" id="nombreLibro" name="nombreLibro" placeholder="Ej: Cien años de soledad" required />
        </div>

        <div class="grupo-campo">
            <label for="nombreAutor">Nombre del autor</label>
            <input type="text" id="nombreAutor" name="nombreAutor" placeholder="Ej: Gabriel García Márquez" required />
        </div>

        <hr class="linea-divisora" />

        <button type="submit" class="boton-guardar">Guardar libro</button>
        <a href="/libros" class="boton-regresar">← Volver sin guardar</a>
    </form>
</div>

</body>
</html>