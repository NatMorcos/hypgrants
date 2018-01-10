class Submission < ActiveRecord::Base
  has_many :grants, through: :grant_submissions
  belongs_to :user

  validates :title, presence: true
end
