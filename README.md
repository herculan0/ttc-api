# ttc-api
> Backend da Aplicação Tutorials

Aplicação em NodeJS, Express, Sequelize(MySQL). É uma API CRUD simples, para cadastrar os tutoriais que quero disponibilizar esse ano. A API recebe requisições HTTP e faz as devidas alterações no banco de dados, criada para ser consumida pelo Frontend, podendo servir outros clientes/apps.

## Infraestrutura

Você pode encontrar a Infraestrutura utilizada para a implementação em produção nesse [link]()
No ambiente local de desenvolvimento, deve-se seguir os passos de execução abaixo.

## Instalação

```sh
npm install
```

## Execução

```sh
docker-compose up -d
node server.js
```

## Implantação em produção

```sh
docker build -t ttc-app .
docker tag ttc-app:latest <AWS_ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/ttc-app:latest
docker push <AWS_ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/ttc-app:latest

kubectl -f apply ttc-devtools/k8s/deployment-ttc.yaml

```


## Release History

* 0.0.1
    * Work in progress

## Meta

Lucas Herculano – [@linkedin](https://linkedin.com/in/lucasgherculano) – lucasgherculano@gmail.com

## Contributing

1. Forque o projeto (<https://github.com/herculan0/ttc-front/fork>)
2. Crie o seu feature branch (`git checkout -b feature/fooBar`)
3. Commit as alterações(`git commit -am 'Add some fooBar'`)
4. Faça o Push (`git push origin feature/fooBar`)
5. Crie uma Pull Request

## Roadmap

- [x] Criação da aplicação em Node
- [x] docker-compose mysql
- [ ] deployment file
- [x] Adicionar sidecar para cloud-sql-proxy
- [ ] Implantar CICD
- [ ] Adicionar ao path(/api) do mesmo DNS do frontend
- [ ] ... whats next?
