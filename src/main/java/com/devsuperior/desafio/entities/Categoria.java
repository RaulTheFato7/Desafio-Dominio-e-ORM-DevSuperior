package com.devsuperior.desafio.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_categoria")
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(columnDefinition = "TEXT")
    private String descricao;

    public Categoria() {}

    public Categoria(Integer id, String descricao) {
        this.id = id;
        this.descricao = descricao;
    }
}
