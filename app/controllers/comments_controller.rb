class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def new
  end

  def create
    comment_to = User.find(Bike.find_by(id: Rent.find(params[:rent_id]).bike_id).user_id).id
    @comment = Comment.new(sender_id: current_user.id, recipient_id: comment_to, content: params[:content], note: params[:note])
    if
      @comment.save
      flash[:success] = 'Thank you You have commented !! '
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    puts "destroy" * 100
    @comment = Comment.find(params[:id])
    @comment.destroy
  end




end
