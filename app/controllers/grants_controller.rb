class GrantsController < ApplicationController

  before_action :verify_admin

  def index
  end

  def show
    #TODO: protect
    @grant = Grant.find(params[:id])
  end

  def new
    @grant = Grant.new
  end

  def create
    @grant = Grant.new(grant_params)

    if @grant.save
      redirect_to @grant
    else
      render :new
    end
  end

  private

  def grant_params
    params.require(:grant).permit(
      :title,
      :total_amount,
      :submission_min, :submission_max,
      :submissions_open_at, :submissions_close_at
    )
  end
end
