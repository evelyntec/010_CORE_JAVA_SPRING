# 📚 Spring MVC · Libros y autores

![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.0-6DB33F?logo=springboot&logoColor=white) ![Java](https://img.shields.io/badge/Java-17-ED8B00?logo=openjdk&logoColor=white) ![JSP](https://img.shields.io/badge/Vistas-JSP%20%2B%20JSTL-6DB33F) ![Maven](https://img.shields.io/badge/Maven-C71A36?logo=apachemaven&logoColor=white)

Aplicación web con **Spring MVC** para consultar un catálogo de libros y **agregar nuevos libros mediante un formulario**.

> Ejercicio del **Bootcamp Full Stack Java (2026)**.

## ✨ Rutas disponibles

| Método | Ruta | Descripción |
|---|---|---|
| `GET` | `/libros` | Catálogo de libros y autores |
| `GET` | `/libros/{nombre}` | Detalle de un libro |
| `GET` | `/formulario/libro` | Formulario para agregar un libro |
| `POST` | `/procesa/libro` | Guarda el libro y redirige al catálogo |

## 🧠 Conceptos aplicados

- Formularios HTML procesados con `@PostMapping` y `@RequestParam`.
- Patrón **Post/Redirect/Get** (`redirect:/libros`).
- Decodificación de parámetros de ruta con caracteres especiales.
- Vistas **JSP con JSTL**.

## ▶️ Cómo ejecutarlo

Requisitos: JDK 17 y Maven 3.9 o superior.

```bash
git clone https://github.com/evelyntec/spring-mvc-libros-autores.git
cd spring-mvc-libros-autores
mvn spring-boot:run
```

Luego abre <http://localhost:8080/libros> en el navegador.

---

## 👩‍💻 Autora

**Evelyn Álvarez Vásquez** · Técnica en Informática en formación (IPLACEX) · Profesora y Magíster en Didáctica de la Matemática

[![LinkedIn](https://img.shields.io/badge/LinkedIn-profesoraevelyn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/profesoraevelyn/)
[![GitHub](https://img.shields.io/badge/GitHub-evelyntec-181717?logo=github&logoColor=white)](https://github.com/evelyntec)
[![Web](https://img.shields.io/badge/Web-profesoraevelyn.com-00B8D9?logo=googlechrome&logoColor=white)](https://profesoraevelyn.com)
