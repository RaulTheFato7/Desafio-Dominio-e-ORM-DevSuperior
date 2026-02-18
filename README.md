# 🎓 Sistema de Evento — Modelo de Domínio e ORM

Projeto desenvolvido como desafio do módulo **Back-end** da formação **DevSuperior — Desenvolvedor Moderno**.

O objetivo é implementar um modelo de domínio completo utilizando **Spring Boot**, **JPA/Hibernate** e banco de dados **H2**, incluindo o seeding inicial da base de dados conforme especificação proposta.

---

## 🚀 Tecnologias utilizadas

- Java 17+
- Spring Boot
- Spring Data JPA
- Hibernate ORM
- Banco de dados H2
- Maven

---

## 📚 Sobre o projeto

O sistema tem como finalidade gerenciar informações de participantes de atividades de um evento acadêmico.

As atividades podem ser:

- Cursos
- Oficinas
- Palestras
- Workshops

Cada atividade possui blocos de horários e pertence a uma categoria.

Participantes podem se inscrever em várias atividades.

---

## 🧠 Modelo conceitual

Entidades principais:

- **Participant (Participante)**
- **Activity (Atividade)**
- **Category (Categoria)**
- **Block (Bloco de horário)**

Relacionamentos:

- Participante ⟷ Atividade → Muitos para Muitos
- Atividade ⟷ Categoria → Muitos para Um
- Atividade ⟷ Bloco → Um para Muitos

---

## 🗄️ Estrutura de dados

### Participant

| Campo | Tipo |
|-------|------|
id | Integer |
name | String |
email | String |

---

### Activity

| Campo | Tipo |
|-------|------|
id | Integer |
name | String |
description | String |
price | Double |

---

### Category

| Campo | Tipo |
|-------|------|
id | Integer |
description | String |

---

### Block

| Campo | Tipo |
|-------|------|
id | Integer |
start | Instant |
finish | Instant |

---

## 🌱 Seeding da base de dados

O projeto possui uma carga inicial automática com:

- 4 participantes
- 2 atividades
- 2 categorias
- 3 blocos de horários
- Relacionamentos entre participantes e atividades

O seeding ocorre na inicialização da aplicação.

---

## ⚙️ Como executar o projeto

### Pré-requisitos

- Java 17 ou superior
- Maven instalado
- IDE (IntelliJ, Eclipse ou VSCode)

---

### Passos

```bash
# Clonar repositório
https://github.com/RaulTheFato7/Desafio-Dominio-e-ORM-DevSuperior

# Entrar na pasta
cd nome-do-projeto

# Executar
./mvnw spring-boot:run






