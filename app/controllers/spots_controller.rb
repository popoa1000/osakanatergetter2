class SpotsController < ApplicationController

  def create
    @spot = Spot.new(spot_params)
  end


  private
  def spot_params
    params.require(:spot).permit(:title, :latitude, :longitude)
  end

end