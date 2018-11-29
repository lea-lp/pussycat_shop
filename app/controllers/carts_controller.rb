class CartsController < ApplicationController
  before_action :get_cart_item
  before_action :filter_signed_in

  def show
    @items = @cart.items
    @list = @cart.cart_lists.find_by(cart: @cart, item: @item)
  end

  def add

    # Cas où l'objet existe déjà dans le panier => on incrémente la quantité
    if @cart.items.include?(@item)
      @item.set_quantity(@cart, @item.get_quantity(@cart)+1)

    # S'il n'existe pas dans le panier
    else
      @cart.items << @item
      @item.set_quantity(@cart, 1)
    end

    redirect_back(fallback_location: root_path)
  end

  def destroy
    @cart.items.delete(@item)
    redirect_back(fallback_location: root_path)
  end

  def change_quantity
    quantity = params[:quantity].to_i
    if quantity <= 0
      quantity = 1
    end
    @item.set_quantity(@cart, quantity)
    redirect_to cart_show_path
  end

  private

  def get_cart_item
    @cart = current_user.cart
    if params[:item_id]
      @item = Item.find(params[:item_id])
    end
  end

end
