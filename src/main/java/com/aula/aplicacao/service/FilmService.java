package com.aula.aplicacao.service;

import com.aula.aplicacao.model.Catalago;
import com.aula.aplicacao.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FilmService {
    @Autowired
    private FilmRepository filmRepository;

    public void saveFilm(Catalago film){
         filmRepository.save(film);
    }
    public List<Catalago> showListFilm(){
        return (List<Catalago>) filmRepository.findAll();
    }
    public Catalago showFilm(Long id){
        return filmRepository.findById(id).get();
    }
    public Catalago modifyFilm(Long id) {
        Optional<Catalago> optionalCatalago = filmRepository.findById(id);
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
