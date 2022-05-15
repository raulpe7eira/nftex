# Nftex API

This repository is the code corresponding to the [Rocketseat - Ignite, Module: Nftex Project](https://app.rocketseat.com.br/node/projeto-nftex-2022) lab.

> The project simulates a NFT Art Catalog API that allows to register arts with GraphQL.

## Previous installations

**Database**, we recommends install [PostgreSQL](https://www.postgresql.org/) with [Docker](https://hub.docker.com/_/postgres). After that, sets connection configuration at:

- `config/dev.exs`
- `config/test.exs`

## Gets dependencies, setups database, tests, coverages, reports and starts application

```bash
cd nftex
mix deps.get
mix ecto.setup
mix test
mix test --cover
mix phx.server
```

## How to use?

```bash
# provides resources graphql
curl -X POST 'http://localhost:4000/api/graphql'

# provides resources graphql with web development interface
curl -X POST 'http://localhost:4000/api/graphiql'

# list all arts
curl -X GET 'http://localhost:4000/api/arts'
```

### Resources GraphQL

```bash
# retrieves art
query {
  art(id: "15794c31-2b9d-4aeb-aaf2-16eba64b4472") {
    artistName,
    description,
    price,
    hash
  }
}

# creates art
mutation {
  createArt(input: {
    description: "Ixi",
    artistName: "Eita",
    hash:"13xpto24",
    price: 5.4
  }) {
    id
  }
}

# retrieves arts
query {
  arts {
    id
    artist_name
    description
    price
    hash
  }
}
```
