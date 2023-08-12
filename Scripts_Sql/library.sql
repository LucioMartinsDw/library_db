-- Criação do banco de dados "library"
CREATE DATABASE IF NOT EXISTS library;
USE library;

-- Tabela Autores: Armazena informações sobre os autores dos livros
CREATE TABLE Autores (
  ID_Autor INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do autor
  Nome VARCHAR(100) NOT NULL, -- Nome do autor
  Data_de_nascimento DATE NOT NULL, -- Data de nascimento do autor
  País_de_origem VARCHAR(50) NOT NULL, -- País de origem do autor
  Biografia VARCHAR(1000) NOT NULL, -- Biografia do autor
  Genero_literario VARCHAR(50), -- Gênero literário associado ao autor
  Website VARCHAR(100) -- Website pessoal do autor
);

-- Tabela Categorias: Armazena informações sobre as categorias dos livros
CREATE TABLE Categorias (
  ID_Categoria INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da categoria
  Nome VARCHAR(100) NOT NULL, -- Nome da categoria
  Descricao VARCHAR(1000) NOT NULL -- Descrição da categoria
);

-- Tabela Editoras: Armazena informações sobre as editoras dos livros
CREATE TABLE Editoras (
  ID_Editora INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da editora
  Nome VARCHAR(100) NOT NULL, -- Nome da editora
  Localizacao VARCHAR(200) NOT NULL, -- Localização da editora
  Ano_de_fundacao INT, -- Ano de fundação da editora
  Website VARCHAR(100) -- Website da editora
);

-- Tabela ISBN: Armazena informações detalhadas sobre os livros
CREATE TABLE ISBN (
  ISBN BIGINT PRIMARY KEY, -- ISBN (International Standard Book Number) do livro
  Titulo VARCHAR(100) NOT NULL, -- Título do livro
  Editora VARCHAR(100) NOT NULL, -- Editora do livro
  Edicao INT NOT NULL, -- Número da edição do livro
  Ano INT NOT NULL, -- Ano de publicação do livro
  Pais VARCHAR(50) NOT NULL, -- País de publicação do livro
  Paginas INT NOT NULL, -- Número de páginas do livro
  Tipo VARCHAR(20) NOT NULL, -- Tipo/formato do livro (papel, e-book, etc.)
  Idioma VARCHAR(50), -- Idioma do livro
  Formato VARCHAR(50) -- Formato do livro (capa dura, brochura, etc.)
);


-- Tabela EncontrarPublicacao: Armazena informações de localização das publicações no acervo
CREATE TABLE EncontrarPublicacao (
  ID_Localizacao INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da localização
  Sala VARCHAR(100) NOT NULL, -- Sala onde a publicação está localizada
  Armario VARCHAR(100) NOT NULL, -- Armário onde a publicação está localizada
  Nivel VARCHAR(100) NOT NULL, -- Nível do armário onde a publicação está localizada
  Outras_informacoes TEXT, -- Outras informações sobre a localização
  Capacidade_do_armario INT, -- Capacidade máxima do armário
  Status_de_disponibilidade BOOLEAN, -- Status de disponibilidade da publicação (disponível ou emprestada)
  Ultima_verificacao DATE -- Data da última verificação da localização da publicação
);

-- Tabela Livros: Armazena informações sobre os livros registrados na biblioteca
CREATE TABLE Livros (
  ID_Livro INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do livro
  Titulo VARCHAR(100) NOT NULL, -- Título do livro
  Ano_de_publicacao INT NOT NULL, -- Ano de publicação do livro
  ISBN BIGINT NOT NULL, -- ISBN do livro
  Numero_de_paginas INT NOT NULL, -- Número de páginas do livro
  Resumo TEXT, -- Resumo do conteúdo do livro
  ID_Autor INT NOT NULL, -- Identificador do autor do livro
  ID_Categoria INT NOT NULL, -- Identificador da categoria do livro
  ID_Editora INT NOT NULL, -- Identificador da editora do livro
  Data_de_aquisicao DATE, -- Data de aquisição do livro pela biblioteca
  Valor_de_aquisicao DECIMAL(10, 2), -- Valor de aquisição do livro
  Formato VARCHAR(50), -- Formato do livro (capa dura, brochura, etc.)
  ID_Localizacao INT NOT NULL, -- Identificador da localização do livro no acervo
  
  FOREIGN KEY (ISBN) REFERENCES ISBN(ISBN), -- Chave estrangeira para a tabela ISBN
  FOREIGN KEY (ID_Autor) REFERENCES Autores(ID_Autor), -- Chave estrangeira para a tabela Autores
  FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria), -- Chave estrangeira para a tabela Categorias
  FOREIGN KEY (ID_Editora) REFERENCES Editoras(ID_Editora), -- Chave estrangeira para a tabela Editoras
  FOREIGN KEY (ID_Localizacao) REFERENCES EncontrarPublicacao(ID_Localizacao) -- Chave estrangeira para a tabela EncontrarPublicacao
);

