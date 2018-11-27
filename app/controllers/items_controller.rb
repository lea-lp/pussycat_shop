class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at asc")
    if user_signed_in?
      current_user.cart ||= Cart.create(user_id: current_user.id)
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end
end
