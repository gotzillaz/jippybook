module Login::LoginHelper
  # Logs in the given user.
  def log_in(user)
    p "log_in"
    session[:user_id] = user.id
    p session
  end

  # Returns the current logged-in user (if any).
  def current_user
    p 'current_user'
    p session
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
