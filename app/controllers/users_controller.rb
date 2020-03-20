class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    @bikes = Bike.where(user_id: current_user.id)
    @carts = Rent.where(user_id: current_user.id, payed: false)
    @rents = Rent.where(user_id: current_user.id, payed: true)
    @total_user_rent = Rent.where(user_id: @user.id, payed: true)
  end

  def edit
    @user = User.find(params[:id])
  end

  
  def update
    @user = current_user
      user_update = params.require(:user).permit(:first_name, :last_name, :birthday)
      if @user.update(user_update)
        redirect_to user_path(current_user.id)
        flash[:success] = "Les modifications sont bien prises en compte ;)"
      else
        render :edit
      end
  end

end
