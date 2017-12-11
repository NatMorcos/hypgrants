class Submission < ActiveRecord::Base
  validates :title, :description, presence: true
end
