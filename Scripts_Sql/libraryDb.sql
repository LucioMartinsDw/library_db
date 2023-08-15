-- Criação do banco de dados "libraryDb"
CREATE DATABASE IF NOT EXISTS libraryDb;
USE libraryDb;

-- Tabela Autores: Armazena informações sobre os autores dos livros
CREATE TABLE Autores (
  id_autor INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do autor
  nome VARCHAR(100) NOT NULL, -- Nome do autor
  data_de_nascimento DATE NOT NULL, -- Data de nascimento do autor
  pais_de_origem VARCHAR(50) NOT NULL, -- País de origem do autor
  biografia VARCHAR(1000) NOT NULL, -- Biografia do autor
  genero_literario VARCHAR(50), -- Gênero literário associado ao autor
  website VARCHAR(100) -- Website pessoal do autor
);

-- Tabela Categorias: Armazena informações sobre as categorias dos livros
CREATE TABLE Categorias (
  id_categoria INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da categoria
  nome VARCHAR(100) NOT NULL, -- Nome da categoria
  descricao VARCHAR(1000) NOT NULL -- Descrição da categoria
);


-- Tabela Editoras: Armazena informações sobre as editoras dos livros
CREATE TABLE Editoras (
  id_editora INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da editora
  nome VARCHAR(100) NOT NULL, -- Nome da editora
  localizacao VARCHAR(200) NOT NULL, -- Localização da editora
  ano_de_fundacao INT, -- Ano de fundação da editora
  website VARCHAR(100) -- Website da editora
);

-- Tabela Isbn: Armazena informações detalhadas sobre os livros
CREATE TABLE Isbn (
  isbn BIGINT PRIMARY KEY, -- ISBN (International Standard Book Number) do livro
  titulo VARCHAR(100) NOT NULL, -- Título do livro
  editora VARCHAR(100) NOT NULL, -- Editora do livro
  edicao INT NOT NULL, -- Número da edição do livro
  ano INT NOT NULL, -- Ano de publicação do livro
  pais VARCHAR(50) NOT NULL, -- País de publicação do livro
  paginas INT NOT NULL, -- Número de páginas do livro
  tipo VARCHAR(20) NOT NULL, -- Tipo/formato do livro (papel, e-book, etc.)
  idioma VARCHAR(50), -- Idioma do livro
  formato VARCHAR(50) -- Formato do livro (capa dura, brochura, etc.)
);

-- Tabela EncontrarPublicacao: Armazena informações de localização das publicações no acervo
CREATE TABLE EncontrarPublicacao (
  id_localizacao INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da localização
  sala VARCHAR(100) NOT NULL, -- Sala onde a publicação está localizada
  armario VARCHAR(100) NOT NULL, -- Armário onde a publicação está localizada
  nivel VARCHAR(100) NOT NULL, -- Nível do armário onde a publicação está localizada
  outras_informacoes TEXT, -- Outras informações sobre a localização
  capacidade_do_armario INT, -- Capacidade máxima do armário
  status_de_disponibilidade BOOLEAN, -- Status de disponibilidade da publicação (disponível ou emprestada)
  ultima_verificacao DATE -- Data da última verificação da localização da publicação
);

-- Tabela Livros: Armazena informações sobre os livros registrados na biblioteca
CREATE TABLE Livros (
  id_livro INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do livro
  titulo VARCHAR(100) NOT NULL, -- Título do livro
  ano_de_publicacao INT NOT NULL, -- Ano de publicação do livro
  isbn BIGINT NOT NULL, -- ISBN do livro
  numero_de_paginas INT NOT NULL, -- Número de páginas do livro
  resumo TEXT, -- Resumo do conteúdo do livro
  id_autor INT NOT NULL, -- Identificador do autor do livro
  id_categoria INT NOT NULL, -- Identificador da categoria do livro
  id_editora INT NOT NULL, -- Identificador da editora do livro
  data_de_aquisicao DATE, -- Data de aquisição do livro pela biblioteca
  valor_de_aquisicao DECIMAL(10, 2), -- Valor de aquisição do livro
  formato VARCHAR(50), -- Formato do livro (capa dura, brochura, etc.)
  id_localizacao INT NOT NULL, -- Identificador da localização do livro no acervo
  
  FOREIGN KEY (isbn) REFERENCES Isbn(isbn), -- Chave estrangeira para a tabela Isbn
  FOREIGN KEY (id_autor) REFERENCES Autores(id_autor), -- Chave estrangeira para a tabela Autores
  FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria), -- Chave estrangeira para a tabela Categorias
  FOREIGN KEY (id_editora) REFERENCES Editoras(id_editora), -- Chave estrangeira para a tabela Editoras
  FOREIGN KEY (id_localizacao) REFERENCES EncontrarPublicacao(id_localizacao) -- Chave estrangeira para a tabela EncontrarPublicacao
);

