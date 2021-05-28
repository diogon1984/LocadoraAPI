## Bem-vindo

Essa é uma API com um CRUD simples de filmes.

Para testes é necessário utilizar o postman ou qualquer outra ferramenta que possibilita utilizar uma API.

O banco de dados configurado está online na nuvem.

***Requests***

###### _GET_
- Listar todos os filmes

https://localhost:44398/filme/

###### _POST_
- Adicionar ou editar um filme. Para editar um filme, basta passar o ID dele.

https://localhost:44398/filme/

_Exemplo de parametro:_
<br />
&emsp; { <br />
&emsp;&emsp;&emsp; "nome": "Star Wars V", <br />
&emsp;&emsp;&emsp; "dataCriacao": "2021-05-28T01:56:48.927", <br />
&emsp;&emsp;&emsp; "ativo": true, <br />
&emsp;&emsp;&emsp; "generoId": 2, <br />
&emsp;&emsp;&emsp; "id": 2 <br />
&emsp; } <br />
<hr>
- Remover um ou mais filmes. Passar por paramêtro uma lista de filmes

https://localhost:44398/filme/deletar

_Exemplo de parametro:_
<br />
&emsp; [ <br />
&emsp;&emsp;&emsp; { <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "nome": "Corra que a policia vem ai", <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "dataCriacao": "2021-05-28T01:56:48.597", <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "ativo": true, <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "generoId": 3, <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "id": 1 <br />
&emsp;&emsp;&emsp; }, <br />
&emsp;&emsp;&emsp; { <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "nome": "Star Wars V", <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "dataCriacao": "2021-05-28T01:56:48.927", <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "ativo": true, <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "generoId": 2, <br />
&emsp;&emsp;&emsp;&emsp;&emsp; "id": 2 <br />
&emsp;&emsp;&emsp; } <br />
&emsp; ] <br />

###### _Roadmap_

- Ao subir a API utilizar uma ferramenta para documentar e testar a API, como o Swagger
- Implementar a API também para adicionar o genero e a locação
