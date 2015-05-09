class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users/'
    else
      render :new
    end
  end

  def user_params

    # password=params["user"]["password"]
    # password_digest = BCrypt::Password.create(password)
    # #password: password_digest
    # binding.pry
    params.require(:user).permit(:email,:password)
  end

end