class CartsController < ApplicationController

  def show
    unless user_signed_in?
      flash[:danger] = "Merci de vous connecter pour accéder à cette page"
      redirect_to(root_path)
      return
    end
    @cart = current_user.cart
    @items = @cart.items
  end

  def add
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
