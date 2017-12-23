class Grant < ActiveRecord::Base

  validates :title, presence: true, uniqueness: { message: "There is already a grant by this name" }
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :submissions_close_at, :submissions_open_at, presence: true
 
  validate :valid_submission_window

  def self.submissions_open
    where("submissions_open_at <= ? AND submissions_close_at > ?", DateTime.now, DateTime.now)
  end

  def open?
    submissions_open_at <= DateTime.now && submissions_end_at > DateTime.now
  end

  private

  def valid_submission_window
    if submissions_close_at <= submissions_open_at
      errors.add(:submissions_close_at, "End date must be after start date")
    end
    if submissions_close_at <= DateTime.now
      errors.add(:submission_close_at, "End date must be in the future")
    end
  end

end
