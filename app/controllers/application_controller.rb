class ApplicationController < ActionController::Base

  def authenticate
    redirect_to(new_session_path) if is_signed_in
  end

  private

  def is_signed_in
    session[:current_email].present?
  end
end
