class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at asc")
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
