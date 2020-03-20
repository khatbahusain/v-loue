class RentsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @rents = Rent.where(payed: false)
  end

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @rent = Rent.new
    @mybikes = Bike.where(user_id: current_user.id)
  end

  def create
    
    puts 'create' * 100
    puts params
    puts 'create' * 100
    
    Rent.create(prix: params[:prix], bike_id: params[:bike_id], payed: false, date_disponible: params[:date_disponible], date_end: params[:date_end])
  end

  def update
    Rent.find(params[:id]).update(user_id: current_user.id)
  end

  def destroy
    puts "destroy" * 100
    Rent.find(params[:id]).update(user_id: nil)
  end


end
