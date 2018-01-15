class SubmissionsController < ApplicationController

  before_action :verify_artist, except: :index
  before_action :verify_admin, only: :index

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
    redirect_to errors_forbidden_path if @submission.user_id != current_user.id
  end   

  def pre_registration_info
    @open_grants = Grant.submissions_open
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      redirect_to @submission
    else
      render :new
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:title, :data, :user)
  end

end
