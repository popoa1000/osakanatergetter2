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

  def create
    @osakana = Osakana.new(osakana_params)
    if @osakana.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def osakana_params
    params.require(:osakana).permit(:fish, :tackle, :details, :image).merge(user_id: current_user.id)
  end


end
