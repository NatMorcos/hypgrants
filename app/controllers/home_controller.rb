class HomeController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @signed_in = user_signed_in?
    @current_user = current_user


    @open_grants = Grant.submissions_open
  end
end
