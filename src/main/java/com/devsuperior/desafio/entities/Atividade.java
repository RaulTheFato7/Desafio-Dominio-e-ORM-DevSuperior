package com.devsuperior.desafio.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_atividade")
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(columnDefinition = "TEXT")
    private String descricao;
    private Double price;

    public Atividade() {}

    public Atividade(Integer id, String descricao, Double price) {
        this.id = id;
        this.descricao = descricao;
        this.price = price;
    }
}
