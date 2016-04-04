helpers do
  def current_user
    User.find_by(id: session[:user_session_id])
  end

  def logged_in?
    !!(current_user)
  end
end
