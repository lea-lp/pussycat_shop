class ApplicationController < ActionController::Base

  def filter_signed_in
    unless user_signed_in?
      flash[:danger] = "Merci de vous connecter pour accéder à cette page"
      redirect_to(root_path)
      return
    end
  end

  def filter_admin
    unless user_signed_in? && current_user.admin
      flash[:danger] = "Seuls les admin peuvent accéder à cette page"
      redirect_to(root_path)
      return
    end
  end 
  
end
