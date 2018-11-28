class ChargesController < ApplicationController

  def new
    @cart = current_user.cart
    get_total_price(@cart)
  end

  def create
    # cart & amount to pay
    @cart = current_user.cart
    @amount = (get_total_price(@cart)*100).to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )

    #création d'un order une fois le paiement effectué
    @order = Order.create(user_id: current_user.id, total_price: @amount/100)
    @order.items << @cart.items
    @cart.items = []

    #envoi des emails une fois la commande créée
    ContactMailer.order_confirmation(@order).deliver_now
    ContactMailer.info_order(@order).deliver_now


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  def get_total_price(cart)
    @total_price = 0
    cart.items.each do |item|
      @total_price += item.price
    end
    return @total_price
  end
end

