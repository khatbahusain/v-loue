class ChargesController < ApplicationController
  before_action :authenticate_user!
  after_action :after_payment

  def new
  end
  
  def create
    # Amount in cents
    @amount = 500
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

    redirect_to user_path(current_user.id)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  def after_payment
    Rent.where(user_id: current_user.id).update(payed: true)
    flash[:success] = 'Le paiement est effectué. Veuillez consulter votre boite Mail !'
    RentMailer.after_rent(current_user).deliver_now
  end

end
