class RentMailer < ApplicationMailer
  default from: 'v-loue@v-loue.fr'


  def after_rent(user)
    @user = user
    @orders = Rent.where(user_id: user.id, payed: true, updated_at: Date.today)
    
    mail(to: @user.email, subject: 'Nouvelle location.') 
  end


end
