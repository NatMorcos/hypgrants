class HomeController < ApplicationController
  def index
    @signed_in = user_signed_in?
    @current_user = current_user
    @user_session = user_session


    @open_grants = Grant.submissions_open
  end
end
