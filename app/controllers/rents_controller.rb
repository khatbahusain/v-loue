class RentsController < ApplicationController
  def index
    @rents = Rent.where(payed: false).where.not(bike_id: Bike.where(user_id: current_user.id))
  end

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @rent = Rent.new
  end

  def create
    Rent.create(prix: params[:prix], created_at: params[:created_at], bike_id: params[:bike_id], payed: false)
  end

  def update
    Rent.find(params[:id]).update(user_id: current_user.id)
  end


  def destroy
    Rent.find(params[:id]).destroy
  end


end
