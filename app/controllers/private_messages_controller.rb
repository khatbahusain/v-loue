class PrivateMessagesController < ApplicationController
  before_action :authenticate_user!, only: :create
  
  
  def show
    @private_message = PrivateMessage.find(params[:id])
    @private_message.update(read: true)
  end

  def new
    @rent = params[:rent_id]
  end

  def create

    private_message_to = User.find(Bike.find_by(id: Rent.find(params[:rent_id]).bike_id).user_id).id

    @private_message = PrivateMessage.new(senderMP_id: current_user.id, recipientMP_id: private_message_to, content: params[:content])
    
    if @private_message.save
      flash[:success] = 'message envoyer'
      redirect_to user_path(current_user.id)
    else
      flash[:error] = 'some thing wrong bro' 
      redirect_to user_path(current_user.id)
    end

  end

  def replay
    PrivateMessage.create(senderMP_id: current_user.id, recipientMP_id: params[:recipientMP_id], content: params[:content])
  end


end
