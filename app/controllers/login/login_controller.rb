class Login::LoginController < ApplicationController
  def index
    @user = User.new
  end 
  
  def authenticate
    @user = User.find_by(username: params[:user][:username].downcase)
    p @user
    if @user && @user.authenticate(params[:user][:password])
      log_in @user
      p 'OK'
      redirect_to '/login'
    else
      p 'ERROR'
      flash.now[:error] = 'Invalid username or password'
      render 'index'
    end
  end

  def logout
    
  end
end
