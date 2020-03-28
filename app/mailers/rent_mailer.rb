class RentMailer < ApplicationMailer
  default from: 'v-loue@monsite.fr'


  



  def after_rent(user)
    @user = user
    @orders = Rent.where(user_id: user.id, payed: true)
    
    mail(to: @user.email, subject: 'location faite!') 
  end


end