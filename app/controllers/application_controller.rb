class ApplicationController < ActionController::Base

  def require_authenticated
    redirect_to(new_session_path) if !is_signed_in
  end

  def is_signed_in
    current_user.is_signed_in
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end
end
