class Registration::RegistrationController < ApplicationController
  def index
  end

  def create
    user = User.new(params[:user])
    redirect_to '/'
  end
end
