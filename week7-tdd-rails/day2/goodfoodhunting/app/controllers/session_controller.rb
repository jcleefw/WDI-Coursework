class SessionController < ApplicationController

  #logging in. create session
  def new
  end

  # log out destroy session
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def create
    #@user = User.where(email: params[:email]).first
    @user = User.find_by(email: params[:email])
    binding.pry
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # correct password
      redirect_to root_path
    else
      # incorrect email or password
      erb :new
    end
  end
end