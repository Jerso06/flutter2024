package com.example.demoApiProva.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "animal")
public class Animal {

    @Id
    private String nome;

    @Column
    private String filo;

    @Column
    private int tempoVida;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getFilo() {
        return filo;
    }

    public void setFilo(String filo) {
        this.filo = filo;
    }

    public int getTempoVida() {
        return tempoVida;
    }

    public void setTempoVida(int tempoVida) {
        this.tempoVida = tempoVida;
    }
}
