require 'jsonapi'

JSONAPI::Rails.install!








# /C:/Users/alang/rubyonrails/game_store/config/initializers/jsonapi.rb

# Configurar recursos JSONAPI
# JSONAPI.configure do |config|
#     # Definir a versão padrão da API
#     # config.default_version = "1.0"

#     # Definir os parâmetros padrão de paginação
#     # config.default_page_size = 10
#     # config.maximum_page_size = 100

#     # Definir o fieldset padrão
#     # config.default_fieldset = nil

#     # Definir a diretiva de inclusão padrão
#     # config.default_include_directive = nil

#     # Definir o cache padrão
#     # config.default_caching = true

#     # Definir o tempo de expiração padrão do cache
#     # config.default_cache_expiration = 5.minutes

#     # Definir os erros do servidor padrão
#     # config.default_server_errors = true

#     # Definir o manipulador de exceções padrão
#     # config.default_exception_handler = :jsonapi

#     # Definir o codificador JSON padrão
#     # config.json_encoder = JSON

#     # Definir o decodificador JSON padrão
#     # config.json_decoder = JSON

#     # Definir o cache de recursos padrão
#     # config.resource_cache = Rails.cache

#     # Definir o tempo de expiração do cache de recursos padrão
#     # config.resource_cache_expiration = 1.hour

#     # Definir a função de digestão do cache de recursos padrão
#     # config.resource_cache_digest_function = ->(key) { Digest::MD5.hexdigest(key) }
# end