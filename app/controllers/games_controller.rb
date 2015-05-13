class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @games = current_user.games
    @locations =current_user.locations
  end

  def new
    @game = Game.new
    location_ids = current_user.games.pluck(:location_id)
    @location = Location.where.not(id: location_ids).random
  end

  def create
    @location = Location.find(params[:game][:location_id])
    @game = current_user.games.new(game_params)
    @game.location = @location
    @game.score = Geocoder::Calculations.distance_between([@location.latitude, @location.longitude], [@game.lat_guess, @game.lng_guess]).round(2)

    # respond_to do |format|
      if @game.save
        redirect_to @game
        # format.html {  }
        # format.json { render json: @game }
      else
        render :new
        # format.html {  }
        # format.json { render json: @game.errors }
      end
    # end
  end

  def show
    @game = Game.find(params[:id])
    @games = Game.all
    @location = Location.find(@game.location.id)
  end

  private
  def game_params
    params.require(:game).permit(:lat_guess, :lng_guess, :score)
  end

end
