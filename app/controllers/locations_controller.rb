class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def create
    @location = Location.find(params[:id]).random
  end



end
