class GamesController < ApplicationController
  def index
    games = Game.all
    render json: GameSerializer.new(games).serializable_hash.to_json
  end

  def show
    game = Game.find(params[:id])
    render json: GameSerializer.new(game).serializable_hash.to_json
  end
end
