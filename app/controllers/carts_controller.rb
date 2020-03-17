class CartsController < ApplicationController

  def show
    @total = 0
  end

  def new
    @total = 0
    Cart.create(user_id: current_user.id, rent_id: params[:rent_id])
  end

end
