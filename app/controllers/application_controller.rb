class ApplicationController < ActionController::Base
	 helper_method :current_user1
  def current_user1
	if session[:user1_id]
  	@current_user1 ||= User1.find(session[:user1_id])
	else
	@current_user1 = nil
	end
  end
end


