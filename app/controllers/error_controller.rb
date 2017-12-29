class ErrorController < ApplicationController

  def index
    @status = response.status
  end

end
