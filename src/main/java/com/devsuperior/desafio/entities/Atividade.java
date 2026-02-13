package com.devsuperior.desafio.entities;

import jakarta.persistence.*;

import java.util.*;

@Entity
@Table(name = "tb_atividade")
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(columnDefinition = "TEXT")
    private String descricao;
    private Double preco;

    @ManyToOne
    @JoinColumn(name = "categoria_id")
    private Categoria categoria;

    @OneToMany(mappedBy = "atividade")
    private List<Bloco> blocos = new ArrayList<>();

    @ManyToMany(mappedBy = "atividades")
    private Set<Participante> participantes = new HashSet<>();

    public Atividade() {}

    public Atividade(Integer id, String descricao, Double preco) {
        this.id = id;
        this.descricao = descricao;
        this.preco = preco;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Bloco> getBlocos() {
        return blocos;
    }

    public Set<Participante> getParticipantes() {
        return participantes;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Atividade atividade = (Atividade) o;
        return Objects.equals(id, atividade.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
