module ApplicationHelper
  def logged?
      session[:user_id].present? 
  end

  def current_user
      session[:user_id].present? 
      @current_user ||= User.find_by_id(session[:user_id]) 
  end
end
