package com.example.demoApiProva.controller;


import com.example.demoApiProva.model.Animal;
import com.example.demoApiProva.repository.AnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping ("/apiProva")
public class AnimalController {

    @Autowired
    AnimalRepository anRepo;

    @GetMapping ("/todos")
    public List<Animal> buscarTodosAnimais(){
        return anRepo.findAll();
    }
}
