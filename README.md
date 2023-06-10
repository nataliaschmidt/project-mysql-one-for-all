# One For All

Este projeto consiste em normalizar uma tabela de dados não normalizados seguindo as três primeiras Formas Normais de Bancos de Dados Relacionais.
O objetivo principal do projeto foi aplicar conceitos de normalização de banco de dados e aprimorar habilidades em consultas SQL para buscar, filtrar e manipular as informações das tabelas.

A estrutura do projeto foi fornecida pela Trybe e os requisitos foram implementados no diretório challenges, localizados na raiz do projeto. A tabela normalizada encontra-se no arquivo desafio1.sql

Utilizei o Workbench como ferramenta visual para auxiliar na criação e execução das queries.

## Tecnologias Utilizadas
<hr>

- SQL
- Docker

## Instruções
<hr>

- Clone este repositório para o seu ambiente de desenvolvimento local.

```bash
git clone git@github.com:nataliaschmidt/project-mysql-one-for-all.git
```

- Execute o seguinte comando para rodar os serviços node e db:
```bash
docker-compose up -d
```
- Esses serviços irão inicializar um container chamado one_for_all e outro chamado one_for_all_db.
- A partir daqui você pode rodar o container one_for_all via CLI para ter acesso ao terminal interativo do container.
```bash
docker exec -it one_for_all bash
```