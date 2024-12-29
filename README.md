# API utilizada no projeto [Lily(site)](https://github.com/rramoss2/lilyV2) e [Lily(mobile)](https://github.com/Nicagab/lilyMobile)

## Recursos disponiveis para acesso: 

- Calendários
- Comentários
- Conteúdos
- Dias
- - Dias_Eventos
- - Dias_Sintomas
- Eventos
- Imagens
- Parceiros
- Profissionais
- Publicações
- Reações
- - Reações_publicacao
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

## Calendários [/calendario]

Informações dos calendários dos usuários

### Listar (List) [GET /calendario]

- Request (application/json)
- - Body
 
```
[
  {
    "idCalendario": 0,
    "inicioCiclo":	"0000-00-00T00:00:00.000Z",
    "duracao":	0,
    "idUsuario":	0
  }
]
```

### Novo (create) [POST /calendario]

- Atributos (object)
- - inicioCiclo (number)
  - duracao (number)
  - idUsuario (number) - fk tabela usuario
## Comentários
## Conteúdos
## Dias
### Dias_Eventos
### Dias_Sintomas
## Eventos
## Imagens
## Parceiros
## Profissionais
## Publicações
## Reações
### Reações_publicacao
## Sintomas
## Telefones
## Tópicos
## Usuários
