class UserMailer < ApplicationMailer
  default from: 'v-loue@v-loue.fr'
 
  def welcome_email(user)
   
    @user = user 

    @url  = 'https://v-loue.herokuapp.com/users/sign_in' 

    mail(to: @user.email, subject: 'Bienvenue chez v-loue !') 
  end
end