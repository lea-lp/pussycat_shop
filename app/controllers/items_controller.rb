class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at asc")
    if user_signed_in?
      current_user.cart ||= Cart.create(user_id: current_user.id)
      current_user.save
    end
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all

    @sug_items = []
    4.times do 
    random_cat = Item.find(rand(@items.first.id..@items.last.id))
    @sug_items << random_cat
    end 
  end

  def edit
  end
end
