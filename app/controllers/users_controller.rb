class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bikes = Bike.where(user_id: current_user.id)
    @carts = Rent.where(user_id: current_user.id, payed: false)
    @rents = Rent.where(user_id: current_user.id, payed: true)
  end

  def edit
    puts "edit" * 100
  end

  def update
    puts "update" * 100
    puts params
    puts "update" * 100
  end

end
