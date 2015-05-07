class Registration::RegistrationController < ApplicationController
  def index
  end

  def create
    tmp = params[:user]
    #p tmp
    p tmp['username']
    @user = User.new do |u|
      u.username = tmp['username']
      u.password = tmp['password']
      u.password_confirmation = tmp['password_confirmation']
      u.email = tmp['email']
    end
    p user.save
    
    #user = User.create(params[:user])
    
    redirect_to '/registration'
  end
end
