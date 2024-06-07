package com.aula.aplicacao.repository;

import com.aula.aplicacao.model.Catalogo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmRepository extends CrudRepository<Catalogo,Long> {

}
