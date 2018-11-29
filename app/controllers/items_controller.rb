class ItemsController < ApplicationController
  
  def new
    filter_admin
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to(@item)
  end

  def edit
    filter_admin
    @item = Item.find(params[:id])
  end

  def update 
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to(@item)
  end

  def index
    @items = Item.all.order("created_at asc")
    if user_signed_in?
      current_user.cart ||= Cart.create(user_id: current_user.id)
      current_user.save
    end
  end

  def show
    @item = Item.find(params[:id])

    @sug_items = []
    rand_array_cat = (Item.first.id..Item.last.id).to_a.shuffle
    4.times do |i|
      random_cat = Item.find_by_id(rand_array_cat[i])
      @sug_items << random_cat
    end 
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price, :image)
  end

end
