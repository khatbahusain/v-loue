class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rents = Rent.where(user_id: current_user.id, payed: true)
   
    @carts = Rent.where(user_id: current_user.id, payed: false)
  end
end
