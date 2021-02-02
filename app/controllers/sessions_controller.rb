class SessionsController < ApplicationController
  def new
  end

  def create
  	user1 = User1.find_by_email(params[:email])
  if user1 && user1.authenticate(params[:password])
     session[:user1_id] = user1.id
     redirect_to root_url(action:'sessions/welcome')
   
   else
     flash.now[:alert] = "Email or password is invalid"
     render "new"
   end
  end

  def destroy
  	session[:user1_id] = nil
      redirect_to home_index_path

  end
end
