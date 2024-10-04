package com.example.demoApiProva.repository;

import com.example.demoApiProva.model.Animal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnimalRepository extends JpaRepository<Animal, Integer> {
}
