class UserProfilesController < ApplicationController
  def show
    @user = current_user
    @orders = @user.orders.order("id desc")
    @last_order = @user.orders.last
  end

  def edit
  end
end
