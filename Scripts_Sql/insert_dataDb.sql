USE library;

-- Inserção de dados na tabela Autores
INSERT INTO Autores (Nome, Data_de_nascimento, Pais_de_origem, Biografia, Genero_literario, Website)
VALUES
  ('João Guimarães Rosa', '1908-06-27', 'Brasil', 'Biografia de João Guimarães Rosa', 'Ficção', NULL),
  ('Machado de Assis', '1839-06-21', 'Brasil', 'Biografia de Machado de Assis', 'Ficção', NULL),
  ('Graciliano Ramos', '1892-10-27', 'Brasil', 'Biografia de Graciliano Ramos', 'Ficção', NULL),
  ('Carlos Drummond de Andrade', '1902-10-31', 'Brasil', 'Biografia de Carlos Drummond de Andrade', 'Poesia', NULL),
  ('Carolina Maria de Jesus', '1914-03-14', 'Brasil', 'Biografia de Carolina Maria de Jesus', 'Ficção', NULL),
  ('Mário de Andrade', '1893-10-09', 'Brasil', 'Biografia de Mário de Andrade', 'Poesia', NULL),
  ('J.K. Rowling', '1965-07-31', 'Reino Unido', 'Biografia de J.K. Rowling', 'Fantasia', NULL),
  ('George R.R. Martin', '1948-09-20', 'Estados Unidos', 'Biografia de George R.R. Martin', 'Fantasia', NULL),
  ('Jane Austen', '1775-12-16', 'Reino Unido', 'Biografia de Jane Austen', 'Romance', NULL),
  ('J.R.R. Tolkien', '1892-01-03', 'Reino Unido', 'Biografia de J.R.R. Tolkien', 'Fantasia', NULL),
  ('George Orwell', '1903-06-25', 'Reino Unido', 'Biografia de George Orwell', 'Ficção', NULL);

-- Inserção de dados na tabela Categorias
INSERT INTO Categorias (Nome, Descricao)
VALUES
  ('Romance', 'Ficção narrativa que explora os relacionamentos humanos.'),
  ('Ficção Brasileira', 'Ficção literária produzida por autores brasileiros.'),
  ('Romance Brasileiro', 'Ficção narrativa produzida por autores brasileiros que explora os relacionamentos humanos.'),
  ('Biografia', 'Narrativa da vida de uma pessoa escrita por outra pessoa.'),
  ('Ficção Literária', 'Gênero literário que se concentra mais nas características artísticas do que nas narrativas.'),
  ('Poesia', 'Forma literária que utiliza linguagem estilizada e ritmo para transmitir emoções.'),
  ('Fantasia', 'Gênero que explora mundos imaginários e elementos mágicos.'),
  ('Ficção Científica', 'Explora conceitos científicos e tecnológicos em cenários futuristas.'),
  ('Clássicos', 'Obras literárias reconhecidas por sua relevância cultural e artística.'),
  ('Mistério', 'Envolto em suspense e reviravoltas, geralmente com um crime a ser solucionado.');


-- Inserção de dados na tabela Editoras
INSERT INTO Editoras (Nome, Localizacao, Ano_de_fundacao, Website)
VALUES
  ('Nova Fronteira', 'Rio de Janeiro, Brasil', NULL, NULL),
  ('Companhia das Letras', 'São Paulo, Brasil', NULL, NULL),
  ('Editora Globo', 'Porto Alegre, Brasil', NULL, NULL),
  ('Editora Record', 'Rio de Janeiro, Brasil', NULL, NULL),
  ('Ática', 'São Paulo, Brasil', NULL, NULL),
  ('Editora Nova Aguilar', 'Rio de Janeiro, Brasil', NULL, NULL),
  ('Editora Rocco', 'Rio de Janeiro, Brasil', NULL, NULL),
  ('Editora HarperCollins', 'Nova York, Estados Unidos', NULL, NULL),
  ('Editora Penguin Random House', 'Londres, Reino Unido', NULL, NULL),
  ('Editora Simon & Schuster', 'Nova York, Estados Unidos', NULL, NULL);
  
  
-- Inserção de dados na tabela ISBN
INSERT INTO Isbn (ISBN, Titulo, Editora, Edicao, Ano, Pais, Paginas, Tipo, Idioma, Formato)
VALUES
  (9788535908066, 'Grande Sertão: Veredas', 'Nova Fronteira', 1, 1956, 'Brasil', 656, 'papel', NULL, NULL),
  (9788535911929, 'Dom Casmurro', 'Companhia das Letras', 1, 1899, 'Brasil', 256, 'papel', NULL, NULL),
  (9788501056169, 'Memórias Póstumas de Brás Cubas', 'Editora Globo', 1, 1881, 'Brasil', 240, 'papel', NULL, NULL),
  (9788503012907, 'Vidas Secas', 'Editora Record', 1, 1938, 'Brasil', 184, 'papel', NULL, NULL),
  (9788571642742, 'Claro Enigma', 'Nova Fronteira', 1, 1951, 'Brasil', 352, 'papel', NULL, NULL),
  (9788525424432, 'Quarto de Despejo: Diário de uma Favelada', 'Ática', 1, 1960, 'Brasil', 208, 'papel', NULL, NULL),
  (9788520933620, 'Quincas Borba', 'Editora Nova Aguilar', 1, 1891, 'Brasil', 352, 'papel', NULL, NULL);
  
  -- Inserção de dados na tabela EncontrarPublicacao
INSERT INTO EncontrarPublicacao (Sala, Armario, Nivel, Status_de_disponibilidade)
VALUES
  ('Sala 1', 'Armario A', 'Nivel 1', true),
  ('Sala 2', 'Armario B', 'Nivel 2', true),
  ('Sala 3', 'Armario C', 'Nivel 3', false);

-- Inserção de dados na tabela Livros
INSERT INTO Livros (Titulo, Ano_de_publicacao, ISBN, Numero_de_paginas, ID_Autor, ID_Categoria, ID_Editora, ID_Localizacao)
VALUES
  ('Grande Sertão: Veredas', 1956, 9788535908066, 656, 1, 1, 1, 1);


