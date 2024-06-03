package com.aula.aplicacao.repository;

import com.aula.aplicacao.model.Catalago;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmRepository extends CrudRepository<Catalago,Long> {

}
