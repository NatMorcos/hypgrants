class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def show
    #TODO: protect this
    @submission = Submission.find(params[:id])
  end   

  def new
  end

  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      redirect_to @submission
    else
      render :new
    end
    # render plain: params[:article].inspect
  end

  private

  def submission_params
    params.require(:submission).permit(:title, :description)
  end

end
