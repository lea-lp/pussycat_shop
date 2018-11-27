class CartsController < ApplicationController
  def show
    @cart = current_user.cart
    @items = @cart.items
  end
end
