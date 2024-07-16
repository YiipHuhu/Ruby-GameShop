# Game Library API 🎮

Esta é uma API de exemplo para gerenciar uma biblioteca de jogos, construída com Ruby on Rails e seguindo a especificação JSON:API. A API permite listar todos os jogos e buscar um jogo específico por seu ID.

## Tecnologias Utilizadas 💻

- Ruby on Rails
- JSONAPI
- JSON:API Serializer
- SQLite (para ambiente de desenvolvimento)

## Requisitos 📋

- Ruby >= 2.7.0
- Rails >= 6.0.0
- Bundler

## Instalação 🚀

Siga os passos abaixo para configurar o projeto localmente:

1. **Clone o repositório:**

    ```bash
    git clone https://github.com/YiipHuhu/Ruby-GameShop.git
    cd Ruby-GameShop
    ```

2. **Instale as dependências:**

    ```bash
    # Jsonapi-rb é uma gem que facilita a implementação de uma API JSON:API
    gem "jsonapi.rb"

    # Kaminari é uma gem que facilita a paginação
    gem 'kaminari'

    # Use JSONAPI::Serializer para enumerar os elementos JSON:API
    gem "jsonapi-serializer"

    # Use Ransack para pesquisar e filtrar recursos
    gem "ransack"
    
    bundle install
    ```

3. **Configure o banco de dados:**

    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```

4. **Inicie o servidor Rails:**

    ```bash
    rails server
    ```

5. **Acesse a aplicação:**

    Abra o navegador e vá para `http://localhost:3000`.

## Endpoints da API 📡

### Listar todos os jogos

```http
GET /games




{
  "data": [
    {
      "id": "1",
      "type": "game",
      "attributes": {
        "title": "The Legend of Zelda: Breath of the Wild",
        "genre": "Action-adventure",
        "release_date": "2017-03-03"
      }
    },
    {
      "id": "2",
      "type": "game",
      "attributes": {
        "title": "Super Mario Odyssey",
        "genre": "Platform",
        "release_date": "2017-10-27"
      }
    }
  ]
}



GET /games/:id
#localhost:3000/games/1


RESPOSTA:

{
  "data": {
    "id": "1",
    "type": "game",
    "attributes": {
      "title": "The Legend of Zelda: Breath of the Wild",
      "genre": "Action-adventure",
      "release_date": "2017-03-03"
    }
  }
}
```

Estrutura do Projeto 🗂️

app/

  ├── controllers/
  
  │   └── games_controller.rb
  
  ├── models/
  
  │   └── game.rb
  
  ├── serializers/
  
  │   └── game_serializer.rb
  
config/

  ├── routes.rb
  
db/

  ├── migrate/
  
  ├── schema.rb
  
  └── seeds.rb
