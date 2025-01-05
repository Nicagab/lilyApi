# API utilizada no projeto [Lily(site)](https://github.com/rramoss2/lilyV2) e [Lily(mobile)](https://github.com/Nicagab/lilyMobile)

## Recursos disponiveis para acesso: 

- Calendários
- Comentários
- Conteúdos
- Dias
  - Dias_Eventos
  - Dias_Sintomas
- Eventos
- Imagens
- Parceiros
- Profissionais
- Publicações
- Reações
  - Reações_publicacao
- Sintomas
- Telefones
- Tópicos
- Usuários

# Tecnologias utilizadas: 

- JavaScript

## Bibliotecas utilizadas:

- Express
- Nodemon
- Cors
- mysql
- multer

# URL de acesso

URL: http://localhost:3001

# Métodos suportados:

| Método | Retorno |
| --- | --- |
| GET | Retorna dados de um ou mais registros |
| POST |Adiciona um novo dado |
| PUT | Altera um dado já existente |
| DELETE | Exclui um dado |

# Status Code HTTP:

| Código | Significado |
| --- | --- |
| 200 | Sucesso (Dados encontrados) |
| 201 | Sucesso (Dados criados/alterados) |
| 400 | Erro na criação/alteração de dados |
| 404 | Erro no retorno de dados |

# Grupo de Recursos

# Calendários [/calendario/${id}]

Informações dos calendários dos usuários

- Atributos:
  - idCalendario (number)
  - inicioCiclo (date) -> formato: YYYY-MM-DD
  - duracao (number)
  - idUsuario (number)
    
# Comentários [/comentario/${id}]

Informações dos comentários dos usuários/parceiros

- Atributos:
  - idComentario (number)
  - texto (string)
  - dataPostagem (date) -> formato: YYYY-MM-DD
  - idUsuario (number)
  - idParceiro (number)
  - idPublicacao (number)

# Conteúdos [/conteudo/${id}]

Informações dos conteúdos postados

- Atributos:
  - idConteudo (number)
  - titulo (string)
  - palavraChave (string) -> Valores possíveis: (menstruacao, higiene, saude, dica)
  - resumo (string)
  - texto (string)
  - tipo (string) -> Valores possíveis: (noticia, artigo)
  - idUsuario (number)

- Outras rotas:
  - [/conteudo/tipo/${tipo}] -> Filtra os usuários pelo atributo tipo

# Dias [/dia/${id}]

Informações dos dias registrados do calendário do usuário

- Atributos:
  - idDia (number)
  - dataZ (string)
  - emocional (string)
  - anotacao (string)
  - idCalendario (number)

## Dias_Eventos [/diaevento/${id}]

Informações da tabela relacional das tabelas *dia* e *evento*

- Atributos:
  - idDiaEvento (number)
  - idDia (number)
  - idEvento (number)
  - horario (datetime) -> formato: hh:mm

## Dias_Sintomas [/diasintoma/${id}]

Informações da tabela relacional das tabelas *dia* e *sintoma*

- Atributos:
  - idDiaSintoma (number)
  - idDia (number)
  - idSintoma (number)

# Eventos [/evento/${id}]

Informações dos eventos do usuário

- Atributos:
  - idEvento (number)
  - nome (string)

# Imagens [/imagem/${id}]

Informações das imagens dos conteúdos e usuários

- Atributos:
  - idImagem (number)
  - nome (string)
  - caminho (string)
  - tipo (string)
  - idConteudo (number)
  - idUsuario (number)

- Outras rotas:
  - [/public/imgs/${nome}] -> Arquivo da imagem
  
# Parceiros [/parceiro/${id}]

Informações dos parceiros

- Atributos:
  - idParceiro (number)
  - nomeFantasia (string)
  - cnpj (string)
  - senha (string)
  - email (string)
  - endereco (string)
  - tipo (string) -> Valores possíveis: (empresa, ong)

- Outras rotas:
  - [parceiro/tipo/${tipo}] -> Filtra os usuários pelo atributo tipo
  
# Profissionais [/profissional/${id}]

Informações dos profissionais

- Atributos:
  - idProfissional (number)
  - resumo (string)
  - crm (string)
  - cren (string)
  - cpf (string)
  - cnpj (string)
  - idUsuario (number)

# Publicações [/publicacao/${id}]

Informações das publicações dos usuários e parceiros

- Atributos:
  - idPublicacao (number)
  - titulo (string)
  - texto (string)
  - dataPostagem (date) -> formato: YYYY-MM-DD
  - idUsuario (number)
  - idParceiro (number)

- Outras rotas:
  - [publicacao/comentarios/${id}] -> Informações de todos os comentários da publicação com respectivo id

# Reações [/reacao/${id}]

Informações das Reações

- Atributos:
  - idReacao (number)
  - nome (string)

## Reações_publicacao [/reacaoPublicacao/${id}]

Informações da tabela relacional das tabelas *reacao* e *publicacao*

- Atributos:
  - idReacaoPublicacao (number)
  - idReacao (number)
  - idPublicacao (number)
  - idUsuario (number)

# Sintomas [/sintoma/${id}]

Informações dos sintomas

- Atributos:
  - idSintoma (number)
  - nome (string)
  - emoji (number)
  - tipo (string) -> Valores possíveis: (fisico,emocional)

# Telefones [/telefone/${id}]

Informações dos telefones dos usuários e parceiros

- Atributos:
  - idTelefone (number)
  - numero (number)
  - ddd (number)
  - tipo (string) -> Valores possíveis: (telefone,celular)
  - idParceiro (number)
  - idUsuario (number)
  - idProfissional (number)

# Tópicos [/topico/${id}]

Informações dos tópicos dos conteúdos

- Atributos:
  - idTopico (number)
  - titulo (string)
  - texto (string)
  - posicao (number)
  - idConteudo (number)

# Usuários [/usuario/${id}]

Informações dos usuários

- Atributos:
  - idUsuario (number)
  - username (string)
  - email (string)
  - senha (string)
  - nome (string)
  - dataNasc (date) -> formato: YYYY-MM-DD
  - tipo (string) -> Valores possíveis: (comum, profissional, admin)  

- Outras rotas:
  - [/usuario/tipo/${tipo}] -> Filtra os usuários pelo atributo tipo
