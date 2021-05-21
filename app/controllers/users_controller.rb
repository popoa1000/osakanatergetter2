class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @osakana = Osakana.find(params[:id])
  end

end
