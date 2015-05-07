class GamesController < ApplicationController

  def new
    @game = Game.new
    @location = Location.random
  end

  def create
    @game = Game.new(game_params)
  end

  def show
    @game = Game.find(params[:id])
  end

  private
  def game_params
    params.require(:game).permit(:lat_guess, :lng_guess, :score)
  end

end
