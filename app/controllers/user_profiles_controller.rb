class UserProfilesController < ApplicationController
  def show
    @user = current_user
    @orders = @user.orders
  end

  def edit
  end
end
