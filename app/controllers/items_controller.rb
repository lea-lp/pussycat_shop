class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at asc")
  end

  def show
  end

  def edit
  end
end
