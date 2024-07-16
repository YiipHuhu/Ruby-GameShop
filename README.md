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
    ex:
    {
      name: "Final Fantasy VII",
      description: "Final Fantasy VII é um jogo eletrônico de RPG desenvolvido e publicado pela SquareSoft. É o sétimo título principal da série Final Fantasy e foi lançado originalmente para o PlayStation em 1997 e depois também para o Microsoft Windows em 1998. O jogo foi dirigido por Yoshinori Kitase, escrito por Kazushige Nojima e Tetsuya Nomura e produzido por     Hironobu Sakaguchi. A história segue Cloud Strife, um mercenário que se junta a um grupo ecoterrorista para parar uma megacorporação que está drenando a energia vital do planeta para usá-la como uma fonte de energia. O jogo apresenta três modos de jogo: um mapa de mundo tridimensional, batalhas em tempo real e sequências cinematográficas pré-renderizadas.",
      price: 49.99,
    },


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
  "games": {
    "data": [
      {
        "id": "1",
        "type": "game",
        "attributes": {
          "name": "The Legend of Zelda: Ocarina of Time",
          "description": "The Legend of Zelda: Ocarina of Time é um jogo de ação-aventura desenvolvido e publicado pela Nintendo para o Nintendo 64. Foi lançado no Japão e na América do Norte em novembro de 1998 e nas regiões PAL no mês seguinte. Ocarina of Time é o quinto jogo da série The Legend of Zelda e o primeiro com gráficos 3D.",
          "price": "49.99"
        }
      },
      {
        "id": "2",
        "type": "game",
        "attributes": {
          "name": "Super Mario 64",
          "description": "Super Mario 64 é um jogo de plataforma de 1996 para o Nintendo 64 e o primeiro da série Super Mario a apresentar jogabilidade 3D. Como Mario, o jogador explora o castelo da Princesa Peach e deve resgatá-la de Bowser. Super Mario 64 apresenta jogabilidade de mundo aberto, graus de liberdade em todos os três eixos no espaço e áreas relativamente grandes compostas principalmente por polígonos 3D verdadeiros, em oposição apenas a sprites bidimensionais (2D).",
          "price": "49.99"
        }
      },
      {
        "id": "3",
        "type": "game",
        "attributes": {
          "name": "The Legend of Zelda: Ocarina of Time",
          "description": "The Legend of Zelda: Ocarina of Time é um jogo de ação-aventura desenvolvido e publicado pela Nintendo para o Nintendo 64. Foi lançado no Japão e na América do Norte em novembro de 1998 e nas regiões PAL no mês seguinte. Ocarina of Time é o quinto jogo da série The Legend of Zelda e o primeiro com gráficos 3D.",
          "price": "49.99"
        }
      }
    ]
  },



GET /games/:id
#localhost:3000/games/1

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
