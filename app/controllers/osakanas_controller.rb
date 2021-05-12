class OsakanasController < ApplicationController

  def index
    @osakanas = Osakana.all
  end

  def new
    @osakana = Osakana.new
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
    osakana = Osakana.create(osakana_params)
    Spot.create(spot_params(osakana))
    if osakana.save
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
    params.permit(:fish, :tackle, :details, :image).merge(user_id: current_user.id)
  end

  def spot_params(osakana)
    params.permit(:title).merge(osakana_id: osakana.id)
  end


end
