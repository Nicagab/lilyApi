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
    "inicioCiclo":	"0000-00-00T00:00:00.000Z",
    "duracao":	0,
    "idUsuario":	0
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

## Conteúdos

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

## Dias

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
