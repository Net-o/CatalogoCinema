package com.aula.aplicacao.controller;

import com.aula.aplicacao.model.Catalago;
import com.aula.aplicacao.service.FilmService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/catalogo")
public class CatalogoController {
	@Autowired
	private FilmService filmService;

	@GetMapping("/registrarFilme")
	public String formFilmGet(Model model) {
		model.addAttribute("Filme", new Catalago());
		return "cadastro";
	}
	@PostMapping("/registrarFilme")
	public String formFilmPost(@ModelAttribute @Valid Catalago Film){
		filmService.saveFilm(Film);
		return "cadastro";
	}
	@GetMapping("/listarFilmes")
	public String listFilm(Model model){
		List<Catalago> filmes = filmService.showListFilm();
		model.addAttribute("filmes",filmes);
		return "listarfilmes";
	}
	@GetMapping("/removerFilme/{id}")
	public String removeFilm(@PathVariable Long id, Model model){
		filmService.deleteFilm(id);
		model.addAttribute(" ");
		return "redirect:/catalogo/listarFilmes";
	}
	@GetMapping("/alterarFilme/{id}")
	public String updateFilmGet(@PathVariable Long id, Model model){
		Catalago filmeAlterar = filmService.modifyFilm(id);
		model.addAttribute("filmeAlterar",filmeAlterar);
		return "alterarFilme";
	}
	@PostMapping("/alterarFilme/{id}")
	public String updateFilmPost(@ModelAttribute @Valid Catalago filmAlterar){
		filmService.saveFilm(filmAlterar);
		return"cadastro";
	}
}