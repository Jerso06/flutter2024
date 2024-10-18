package com.example.demoAPIJerso.controller;

import com.example.demoAPIJerso.model.Aluno;
import com.example.demoAPIJerso.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping ("/apiAluno")
public class AlunoController {

    @Autowired
    AlunoRepository alRepo;

    @GetMapping ("/todos")
    public List<Aluno> buscarTodosAlunos(){
        return alRepo.findAll();
    }

    @PostMapping ("/inserir")
    public void inserirAluno(@RequestBody Aluno al){
        alRepo.save(al);
    }
}
