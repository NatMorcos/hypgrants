class HomeController < ApplicationController
  def index
    # @grants_open = Grant.submissions_open.any?
    @grants_open = true #Grant.submissions_open.any?
  end
end
