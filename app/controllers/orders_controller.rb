class OrdersController < ApplicationController

  def create
    @cart = current_user.cart
    @items = @cart.items
    @order = Order.create(user_id: current_user.id)
    @order.items << @items
    @cart.items = []
    redirect_to order_path(@order)
  end


  def show
    @order = Order.find(params[:id])
    @items = @order.items
  end


end
