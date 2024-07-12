# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Game.create([
{
  name: "The Legend of Zelda: Ocarina of Time",
  description: "The Legend of Zelda: Ocarina of Time é um jogo de ação-aventura desenvolvido e publicado pela Nintendo para o Nintendo 64. Foi lançado no Japão e na América do Norte em novembro de 1998 e nas regiões PAL no mês seguinte. Ocarina of Time é o quinto jogo da série The Legend of Zelda e o primeiro com gráficos 3D.",
  price: 49.99,
},
{
  name: "Super Mario 64",
  description: "Super Mario 64 é um jogo de plataforma de 1996 para o Nintendo 64 e o primeiro da série Super Mario a apresentar jogabilidade 3D. Como Mario, o jogador explora o castelo da Princesa Peach e deve resgatá-la de Bowser. Super Mario 64 apresenta jogabilidade de mundo aberto, graus de liberdade em todos os três eixos no espaço e áreas relativamente grandes compostas principalmente por polígonos 3D verdadeiros, em oposição apenas a sprites bidimensionais (2D).",
  price: 49.99,
},
])
