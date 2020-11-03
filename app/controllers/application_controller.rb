class ApplicationController < ActionController::Base

  def require_authenticated
    redirect_to(new_session_path) if !is_signed_in
  end

  def current_email
    session[:current_email]
  end

  private

  def is_signed_in
    session[:current_email].present?
  end
end
