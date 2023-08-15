# Banco de Dados "Library"

## Introdução

O banco de dados "Library" é um sistema de gerenciamento de uma biblioteca que permite armazenar informações sobre autores, livros, categorias, editoras e detalhes de publicações. Este README oferece uma visão geral das tabelas, atributos e funcionalidades do banco de dados.

## Tabelas

O banco de dados é composto pelas seguintes tabelas:

### Autores

Armazena informações sobre os autores dos livros.

Atributos:
- `id_autor` (Chave Primária): Identificador único do autor.
- `nome`: Nome do autor.
- `data_de_nascimento`: Data de nascimento do autor.
- `pais_de_origem`: País de origem do autor.
- `biografia`: Biografia do autor.
- `genero_literario`: Gênero literário associado ao autor.
- `website`: Website pessoal do autor.

### Categorias

Armazena informações sobre as categorias dos livros.

Atributos:
- `id_categoria` (Chave Primária): Identificador único da categoria.
- `nome`: Nome da categoria.
- `descricao`: Descrição da categoria.

### Editoras

Armazena informações sobre as editoras dos livros.

Atributos:
- `id_editora` (Chave Primária): Identificador único da editora.
- `nome`: Nome da editora.
- `localizacao`: Localização da editora.
- `ano_de_fundacao`: Ano de fundação da editora.
- `website`: Website da editora.

### Isbn

Armazena informações detalhadas sobre os livros.

Atributos:
- `isbn` (Chave Primária): ISBN (International Standard Book Number) do livro.
- `titulo`: Título do livro.
- `editora`: Editora do livro.
- `edicao`: Número da edição do livro.
- `ano`: Ano de publicação do livro.
- `pais`: País de publicação do livro.
- `paginas`: Número de páginas do livro.
- `tipo`: Tipo/formato do livro (papel, e-book, etc.).
- `idioma`: Idioma do livro.
- `formato`: Formato do livro (capa dura, brochura, etc.).

### EncontrarPublicacao

Armazena informações de localização das publicações no acervo.

Atributos:
- `id_localizacao` (Chave Primária): Identificador único da localização.
- `sala`: Sala onde a publicação está localizada.
- `armario`: Armário onde a publicação está localizada.
- `nivel`: Nível do armário onde a publicação está localizada.
- `outras_informacoes`: Outras informações sobre a localização.
- `capacidade_do_armario`: Capacidade máxima do armário.
- `status_de_disponibilidade`: Status de disponibilidade da publicação (disponível ou emprestada).
- `ultima_verificacao`: Data da última verificação da localização da publicação.

### Livros

Armazena informações sobre os livros registrados na biblioteca.

Atributos:
- `id_livro` (Chave Primária): Identificador único do livro.
- `titulo`: Título do livro.
- `ano_de_publicacao`: Ano de publicação do livro.
- `isbn`: ISBN do livro.
- `numero_de_paginas`: Número de páginas do livro.
- `resumo`: Resumo do conteúdo do livro.
- `id_autor`: Identificador do autor do livro (Chave Estrangeira).
- `id_categoria`: Identificador da categoria do livro (Chave Estrangeira).
- `id_editora`: Identificador da editora do livro (Chave Estrangeira).
- `data_de_aquisicao`: Data de aquisição do livro pela biblioteca.
- `valor_de_aquisicao`: Valor de aquisição do livro.
- `formato`: Formato do livro (capa dura, brochura, etc.).
- `id_localizacao`: Identificador da localização do livro no acervo (Chave Estrangeira).

## Funcionalidades

O banco de dados "Library" permite:

- Cadastrar, atualizar e excluir informações sobre autores, categorias, editoras e detalhes de publicações.
- Registrar livros na biblioteca, associando-os a autores, categorias, editoras e detalhes de localização.
- Consultar informações detalhadas sobre livros, autores e outros elementos.

## Relações

As tabelas "Livros", "Autores", "Categorias", "Editoras" e "EncontrarPublicacao" possuem chaves estrangeiras que estabelecem relações entre elas, permitindo consultas e relacionamento de dados.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para sugerir melhorias, correções ou novas funcionalidades para este projeto.

## Licença
