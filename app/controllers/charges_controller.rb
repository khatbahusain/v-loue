class ChargesController < ApplicationController
  before_action :authenticate_user!
  
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

    Rent.where(user_id: current_user.id).update(payed: true)
    flash[:success] = 'Le paiement est effectué'
    redirect_to user_path(current_user.id)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
