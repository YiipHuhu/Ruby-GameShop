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
  name: "Final Fantasy VII",
  description: "Final Fantasy VII é um jogo eletrônico de RPG desenvolvido e publicado pela SquareSoft. É o sétimo título principal da série Final Fantasy e foi lançado originalmente para o PlayStation em 1997 e depois também para o Microsoft Windows em 1998. O jogo foi dirigido por Yoshinori Kitase, escrito por Kazushige Nojima e Tetsuya Nomura e produzido por Hironobu Sakaguchi. A história segue Cloud Strife, um mercenário que se junta a um grupo ecoterrorista para parar uma megacorporação que está drenando a energia vital do planeta para usá-la como uma fonte de energia. O jogo apresenta três modos de jogo: um mapa de mundo tridimensional, batalhas em tempo real e sequências cinematográficas pré-renderizadas.",
  price: 49.99,
},
])
