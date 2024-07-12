class GameSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :price
end
