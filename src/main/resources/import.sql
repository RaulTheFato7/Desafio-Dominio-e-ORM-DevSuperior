-------------------------------------------------------
-- 1. CATEGORIAS (Não dependem de ninguém)
-------------------------------------------------------
INSERT INTO tb_categoria (id, descricao) VALUES (1, 'Curso');
INSERT INTO tb_categoria (id, descricao) VALUES (2, 'Oficina');

-------------------------------------------------------
-- 2. ATIVIDADES (Dependem de Categoria)
-------------------------------------------------------
INSERT INTO tb_atividade (id, descricao, preco, categoria_id) VALUES (1, 'Curso de HTML', 80.0, 1);
INSERT INTO tb_atividade (id, descricao, preco, categoria_id) VALUES (2, 'Oficina de Github', 50.0, 2);

-------------------------------------------------------
-- 3. BLOCOS (Dependem de Atividade)
-- Nota: A coluna no banco é 'atividade_id' (singular)
-- O formato de data ISO-8601 é suportado pelo H2
-------------------------------------------------------
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (1, '2017-09-25T08:00:00Z', '2017-09-25T11:00:00Z', 1);
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (2, '2017-09-25T14:00:00Z', '2017-09-25T18:00:00Z', 2);
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (3, '2017-09-26T08:00:00Z', '2017-09-26T11:00:00Z', 2);

-------------------------------------------------------
-- 4. PARTICIPANTES (Independentes)
-------------------------------------------------------
INSERT INTO tb_participante (id, nome, email) VALUES (1, 'José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

-------------------------------------------------------
-- 5. RELACIONAMENTO N:M (tb_participantes_atividade)
-- Depende de Atividade e Participante
-- Colunas: atividade_id, participante_id
-------------------------------------------------------
INSERT INTO tb_participantes_atividade (atividade_id, participante_id) VALUES (1, 1);
INSERT INTO tb_participantes_atividade (atividade_id, participante_id) VALUES (1, 2);
INSERT INTO tb_participantes_atividade (atividade_id, participante_id) VALUES (1, 3);
INSERT INTO tb_participantes_atividade (atividade_id, participante_id) VALUES (2, 3);
INSERT INTO tb_participantes_atividade (atividade_id, participante_id) VALUES (2, 4);