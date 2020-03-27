class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def new
  end

  def create

    note = 5
    if params[:note]
      note = params[:note]
    end
    
    puts "comment" * 100
    puts params
    comment_to = User.find(Bike.find_by(id: Rent.find(params[:rent_id]).bike_id).user_id).id
    
    @comment = Comment.new(sender_id: current_user.id, recipient_id: comment_to, content: params[:content], note: note)

    if comment_to != current_user.id
      @comment.save
      flash[:success] = 'Merci pour ton commentaire.'
      redirect_to user_path(current_user.id)
    else
      flash[:error] = 'Tu ne peux pas te commenter!' 
      redirect_to user_path(current_user.id)
    end
  end

end
