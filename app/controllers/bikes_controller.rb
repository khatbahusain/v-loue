class BikesController < ApplicationController
  before_action :authenticate_user!


  def new
    puts "new" * 100
  end



  def create
    @bike = Bike.new(user_id: current_user.id, more_info: params[:more_info])
    puts params
    @bike.avatar.attach(params[:imgbike])
    @bike.save
  end

  def show

  end


  def destroy
    Bike.find(params[:id]).destroy
  end
  
end

