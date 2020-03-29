class BikesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    puts "*" * 100
    puts params
    @bike = Bike.new(user_id: current_user.id, more_info: params[:more_info])
    @bike.imgbike.attach(params[:imgbike])

    @bike.save
    flash[:success] = 'Vous avez ajouter un vélo !'
    redirect_to user_path(current_user.id)
  end

  def show
  end

  def destroy
    Bike.find(params[:id]).destroy
    flash[:success] = 'Vous avez supprimer un vélo !'
    redirect_to user_path(current_user.id)
  end
  
end

