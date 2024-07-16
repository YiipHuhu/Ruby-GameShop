class GamesController < ApplicationController
  def index
    games = Game.page(params[:page])
    render json: {
      games: GameSerializer.new(games).serializable_hash,
      meta: {
        current_page: games.current_page,
        next_page: games.next_page,
        prev_page: games.prev_page,
        total_pages: games.total_pages,
        total_count: games.total_count
      }
    }
  end

  def show
    game = Game.find(params[:id])
    render json: GameSerializer.new(game).serializable_hash.to_json
  end
end
