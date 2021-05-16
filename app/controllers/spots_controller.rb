class SpotsController < ApplicationController

  def create
    @spot = Spot.new(spot_params)
  end

end