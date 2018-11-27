class CartsController < ApplicationController
  def show
    @cart = current_user.cart
    @items = @cart.items
  end

  def edit
    @item = Item.find(params[:item_id])
    @cart = current_user.cart
    @cart.items << @item
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @item = Item.find(params[:item_id])
    @cart = current_user.cart
    @cart.items.delete(@item)
    redirect_back(fallback_location: root_path)
  end

end
