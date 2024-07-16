# Description: Este script envia uma requisição GET para a API e retorna os valores que são exibidos na página.
require 'httparty'

url = 'http://localhost:3000/games?page=2'
response = HTTParty.get(url)
puts response.body
