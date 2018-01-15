class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  private

  def verify_admin
    redirect_to errors_forbidden_path unless current_user.admin?
  end

  def verify_artist
    redirect_to errors_forbidden_path unless current_user.artist?
  end
end
