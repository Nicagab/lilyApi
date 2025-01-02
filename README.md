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

## Calendários [/calendario]

Informações dos calendários dos usuários

### Listar (List) [GET /calendario]

- Response 200 (application/json)
 
```
[
  {
    "idCalendario": 0,
    "inicioCiclo": "0000-00-00T00:00:00.000Z",
    "duracao": 0,
    "idUsuario": 0
  }
]
```

### Novo (create) [POST /calendario]

- Atributos (object)
  - inicioCiclo (date) - formato: YYYY-MM-DD
  - duracao (number)
  - idUsuario (number) - fk tabela usuario
 
- Request (application/json)
  - Body
 
```
  {
    "inicioCiclo": "2000-01-01",
    "duracao": 5,
    "idUsuario": 1
  }
```

- Response 201 (application/json)
  
```
{
	 "fieldCount": 0,
	 "affectedRows": 1,
	 "insertId": 1,
	 "serverStatus": 2,
	 "warningCount": 0,
	 "message": "",
	 "protocol41": true,
	 "changedRows": 0
}
```
### Editar (Update) [PUT /calendario/{id}]

- Request (application/json)
  - Body
 
```
  {
    "inicioCiclo":	"2000-01-01",
    "duracao":	5,
    "idUsuario":	1
  }
```

- Response 201 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 0,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "(Rows matched: 1  Changed: 0  Warnings: 0",
	"protocol41": true,
	"changedRows": 0
}
```

### Excluir (Delete) [DELETE calendario/{id}]

- Response 200 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 0,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "",
	"protocol41": true,
	"changedRows": 0
}
```

### Detalhar (Read) [GET /calendario/{id}]

- Response 200 (application/json)
 
```
{
	"0": {
		"idCalendario": 1,
		"inicioCiclo": "2001-01-01T03:00:00.000Z",
		"duracao": 5,
		"idUsuario": 1
	},
	"dias": []
}
```
    
## Comentários

Informações dos comentários dos usuários/parceiros

### Listar (List) [GET /comentario]

- Response 200 (application/json)
 
```
[
	{
		"idComentario": 1,
		"texto": "Comentário",
		"dataPostagem": "2001-01-01T02:00:00.000Z",
		"idUsuario": 1,
		"idParceiro": null,
		"idPublicacao": 1
	}
]
```

### Novo (create) [POST /comentario]

- Atributos (object)
  - texto (string)
  - dataPostagem (date) - formato YYYY-MM-DD
  - idUsuario (number) - fk tabela usuario
  - idParceiro (number) - fk tabela parceiro
  - idPublicacao (number) - fk tabela publicacao
 
- Request (application/json)
  - Body
 
```
{
	"texto": "Comentário",
	"dataPostagem": "2001-01-01",
	"idUsuario": 1,
	"idPublicacao": 1
}
```

- Response 201 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 1,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "",
	"protocol41": true,
	"changedRows": 0
}
```
### Editar (Update) [PUT /comentario/{id}]

- Request (application/json)
  - Body
 
```
  {
	"texto": "Comentário",
	"dataPostagem": "2001-01-01",
	"idUsuario": 1,
	"idPublicacao": 1
}
```

- Response 201 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 0,
	"insertId": 0,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "(Rows matched: 0  Changed: 0  Warnings: 0",
	"protocol41": true,
	"changedRows": 0
}
```

### Excluir (Delete) [DELETE /comentario/{id}]

- Response 200 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 0,
	"insertId": 0,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "",
	"protocol41": true,
	"changedRows": 0
}
```

### Detalhar (Read) [GET /comentario/{id}]

- Response 200 (application/json)
 
```
[
	{
		"idComentario": 1,
		"texto": "Comentário",
		"dataPostagem": "2001-01-01T02:00:00.000Z",
		"idUsuario": 1,
		"idParceiro": null,
		"idPublicacao": 1
	}
]
```

## Conteúdos

### Listar (List) [GET /conteudo/?{tipo}]

- parameters
  - Tipo (string) - Exibe apenas conteudos daquele tipo. Valores possiveis:
    - noticia
    - artigo

- Response 200 (application/json)
 
```
[
	{
		"idConteudo": 1,
		"titulo": "Título",
		"palavraChave": "menstruacao",
		"resumo": "Resumo",
		"texto": "Texto",
		"tipo": "artigo",
		"idUsuario": 1
	}
]
```

### Novo (create) [POST /conteudo]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
{
		"titulo": "Título",
		"palavraChave": "menstruacao",
		"resumo": "Resumo",
		"texto": "Texto",
		"tipo": "artigo",
		"idUsuario": 1
}
```

- Response 201 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 1,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "",
	"protocol41": true,
	"changedRows": 0
}
```

### Editar (Update) [PUT /conteudo/{id}]

- Request (application/json)
  - Body
 
```
  {
		"titulo": "Título",
		"palavraChave": "menstruacao",
		"resumo": "Resumo",
		"texto": "Texto",
		"tipo": "artigo",
		"idUsuario": 1
}
```

- Response 201 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 0,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "(Rows matched: 1  Changed: 0  Warnings: 0",
	"protocol41": true,
	"changedRows": 0
}
```

### Excluir (Delete) [DELETE /conteudo/{id}]

- Response 200 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 0,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "",
	"protocol41": true,
	"changedRows": 0
}
```

### Detalhar (Read) [GET /conteudo/{id}]

- Response 200 (application/json)
 
```
{
	"0":{
		"titulo": "Título",
		"palavraChave": "menstruacao",
		"resumo": "Resumo",
		"texto": "Texto",
		"tipo": "artigo",
		"idUsuario": 1
	},
	"topicos": [],
	"imagens": []
}
```

## Dias

### Listar (List) [GET /dia]

- Response 200 (application/json)
 
```
[
	{
		"idDia": 1,
		"dataZ": "2001-01-01T00:00:00.000Z",
		"emocional": "Ótimo",
		"anotacao": "Anotação",
		"idCalendario": 1
	}
]
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

### Dias_Eventos

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

### Dias_Sintomas

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Eventos

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Imagens

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Parceiros

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Profissionais

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Publicações

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
{
	"texto": "Publicacao",
	"dataPostagem": "2001-01-01",
	"idUsuario": 1
}
```

- Response 201 (application/json)
  
```
{
	"fieldCount": 0,
	"affectedRows": 1,
	"insertId": 5,
	"serverStatus": 2,
	"warningCount": 0,
	"message": "",
	"protocol41": true,
	"changedRows": 0
}
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Reações

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

### Reações_publicacao

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Sintomas

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Telefones

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Tópicos

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```

## Usuários

### Listar (List) [GET /]

- Response 200 (application/json)
 
```
```

### Novo (create) [POST /]

- Atributos (object)
 
- Request (application/json)
  - Body
 
```
```

- Response 201 (application/json)
  
```
```
### Editar (Update) [PUT //{id}]

- Request (application/json)
  - Body
 
```
  {
  }
```

- Response 201 (application/json)
  
```
```

### Excluir (Delete) [DELETE /{id}]

- Response 200 (application/json)
  
```
```

### Detalhar (Read) [GET //{id}]

- Response 200 (application/json)
 
```
```
