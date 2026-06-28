package com.evelyn.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;

@Controller
public class ControladorLibros {

    private static HashMap<String, String> listaLibros = new HashMap<String, String>();

    public ControladorLibros() {
        listaLibros.put("Odisea", "Homero");
        listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
        listaLibros.put("El Código Da Vinci", "Dan Brown");
        listaLibros.put("Puedo aprobar Java", "Evelyn Alvarez");
        listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
        listaLibros.put("El Hobbit", "J.R.R. Tolkien");
        listaLibros.put("El alquimista", "Paulo Coelho");
    }

    @GetMapping("/libros")
    public String obtenerTodosLosLibros(Model modelo) {
        modelo.addAttribute("libros", listaLibros);
        return "libros";
    }

    @GetMapping("/libros/{nombre}")
    public String obtenerInformacionDeLibro(@PathVariable String nombre, Model modelo) {
        try {
            String nombreDecodificado = java.net.URLDecoder.decode(nombre, "UTF-8");
            if (listaLibros.containsKey(nombreDecodificado)) {
                modelo.addAttribute("nombreLibro", nombreDecodificado);
                modelo.addAttribute("nombreAutor", listaLibros.get(nombreDecodificado));
            } else {
                modelo.addAttribute("mensaje", "El libro no se encuentra en nuestra lista.");
            }
        } catch (Exception e) {
            modelo.addAttribute("mensaje", "El libro no se encuentra en nuestra lista.");
        }
        return "detalleLibro";
    }

    @GetMapping("/formulario/libro")
    public String formularioLibro() {
        return "formularioLibros";
    }

    @PostMapping("/procesa/libro")
    public String procesaLibro(@RequestParam String nombreLibro, @RequestParam String nombreAutor) {
        listaLibros.put(nombreLibro, nombreAutor);
        return "redirect:/libros";
    }
}