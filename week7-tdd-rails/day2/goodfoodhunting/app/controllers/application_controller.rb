class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    !!current_user
  end

  # allow it to be use everywhere the web app


  def current_user
    User.find_by(id: session[:user_id])
  end
  # allow it to be use everywhere the web app
  helper_method :current_user, :logged_in?

end
