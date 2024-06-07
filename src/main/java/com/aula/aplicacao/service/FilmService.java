package com.aula.aplicacao.service;

import com.aula.aplicacao.model.Catalogo;
import com.aula.aplicacao.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FilmService {
    @Autowired
    private FilmRepository filmRepository;

    public void saveFilm(Catalogo film){
         filmRepository.save(film);
    }
    public List<Catalogo> showListFilm(){
        return (List<Catalogo>) filmRepository.findAll();
    }
    public Catalogo showFilm(Long id){
        return filmRepository.findById(id).get();
    }
    public Catalogo modifyFilm(Long id) {
        Optional<Catalogo> optionalCatalago = filmRepository.findById(id);
        if (optionalCatalago.isPresent()) {
            return optionalCatalago.get();
        } else {
            throw new RuntimeException("Produto não encontrado para o ID: " + id);
        }
    }
    public void deleteFilm(Long id){
        filmRepository.deleteById(id);
    }
}
