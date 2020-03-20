module UsersHelper

  def is_my_profile?
    current_user.id == @user.id
  end

end
