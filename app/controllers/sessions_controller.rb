class SessionsController < ApplicationController
  def new
    render '/login/login/index'
  end

  def create
    user = User.find_by(username: params[:user][:username].downcase)
    if user && user.authenticate(params[:user][:password])
      log_in user
      redirect_to '/login'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end

end
