# app/controllers/api/v1/games_controller.rb
class GamesController < ApplicationController

  def index
    games = Game.page(params[:page]).per(3)
    render json: GameSerializer.new(games).serializable_hash
  end

  def show
    game = Game.find(params[:id])
    render json: GameSerializer.new(game).serializable_hash
  end

  def create
    game = Game.new(game_params)
    if game.save
      render json: GameSerializer.new(game).serializable_hash, status: :created
    else
      render json: { errors: game.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      render json: GameSerializer.new(game).serializable_hash
    else
      render json: { errors: game.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    game = Game.find(params[:id])
    game.destroy
    head :no_content
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :price)
  end
end
