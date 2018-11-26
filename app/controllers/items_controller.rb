class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at asc")
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end
end
