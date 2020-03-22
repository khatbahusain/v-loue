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
    @rent = Rent.new(prix: params[:prix], bike_id: params[:bike_id], payed: false, date_disponible: params[:date_disponible], date_end: params[:date_end])
    if @rent.save 
      flash[:success] = 'Vous avez bien ajouter une location !'
      redirect_to rents_path
    else
      flash[:error] = 'Veuillez vérifier la date ou le prix !'
      redirect_to new_rent_path
    end

    
  end

  def update
    Rent.find(params[:id]).update(user_id: current_user.id)
    flash[:success] = 'Vous avez ajouter une location à votre cart !'
    redirect_to user_path(current_user.id)
  end

  def destroy
    puts "destroy" * 100
    Rent.find(params[:id]).update(user_id: nil)
    flash[:success] = 'Vous avez supprimer une location de votre cart !'
    redirect_to rents_path
  end


end
