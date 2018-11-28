class ApplicationController < ActionController::Base

  def filter_signed_in
    unless user_signed_in?
      flash[:danger] = "Merci de vous connecter pour accéder à cette page"
      redirect_to(root_path)
      return
    end
  end
  
end
