class GrantSubmission < ActiveRecord::Base
  belongs_to :submission
  belongs_to :grant
end