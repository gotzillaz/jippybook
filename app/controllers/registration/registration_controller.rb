class Registration::RegistrationController < ApplicationController
  def index
    @user = User.new
  end

  def create
    reg_user = params[:user]
    #p tmp
    p reg_user['username']
    @user = User.new do |u|
      u.username = reg_user['username']
      u.password = reg_user['password']
      u.password_confirmation = reg_user['password_confirmation']
      u.email = reg_user['email']
    end
    if @user.save
      redirect_to '/'
    else
      p "Failed"
      p @user.errors
      render 'index'
    end
    #user = User.create(params[:user])
  end
  
  private 
    def user_params
      params.require(:user).permit(:username, :email, :password,
                                   :password_confirmation)
    end
end
