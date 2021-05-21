class OsakanasController < ApplicationController

  def index
    @osakanas = Osakana.includes(:user)
  end

  def new
    @osakana_spot = OsakanaSpot.new
  end

  def show
    @osakana = Osakana.find(params[:id])
  end

  def edit
    @osakana = Osakana.find(params[:id])
  end

  def update
    osakana = Osakana.find(params[:id])
    osakana.update(osakana_params)
    if osakana.save
      redirect_to osakana_path
    else
      render :edit
    end
  end

  def create
    @osakana_spot = OsakanaSpot.new(osakana_params)
    if @osakana_spot.valid?
      @osakana_spot.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    osakana = Osakana.find(params[:id])
    osakana.destroy
    if osakana.destroy
      redirect_to root_path
    end
  end

  private
  def osakana_params
    params.require(:osakana_spot).permit(:fish, :tackle, :details, :image, :title, :spot_id).merge(user_id: current_user.id)
  end

end
