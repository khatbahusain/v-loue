class BikesController < ApplicationController

  def create
    @bike = Bike.create(user_id: current_user.id, more_info: params[:more_info])
  end

  def destroy
    Bike.find(params[:id]).destroy
  end
  
end
