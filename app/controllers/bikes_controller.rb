class BikesController < ApplicationController

  def new
    if Bike.where(user_id: current_user.id)
       @bikes = Bike.where(user_id: current_user.id)
    end
  end

  def create
    @bike = Bike.create(user_id: current_user.id, more_info: params[:more_info])
  end
  
end
