class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @notes = 0
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @bikes = Bike.where(user_id: current_user.id)
    @carts = Rent.where(user_id: current_user.id, payed: false)
    @rents = Rent.where(user_id: current_user.id, payed: true)
  end

  def edit
    @user = User.find(params[:id])
  end

  
  def update
    puts "update" * 100

    @user = current_user
      if @user.update(params_user) &&  @user.update(city: params[:city])
         
        redirect_to user_path(current_user.id)
        flash[:success] = "Les modifications sont bien prises en compte ;)"
      else
        render :edit
      end
  end

private

  def params_user
    params.require(:user).permit(:first_name, :last_name, :birthday, :adresse)
  end
 
end
