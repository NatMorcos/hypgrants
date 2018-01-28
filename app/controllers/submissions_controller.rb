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
    @artist_submission_form = ::ArtistSubmissionForm.new
  end

  def create
    @artist_submission_form = ::ArtistSubmissionForm.new

    @artist_submission_form.prepare_params(
      params: params[:artist_submission_form],
      user: current_user
    )

    if @artist_submission_form.submit
      @submission = @artist_submission_form.submission
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
