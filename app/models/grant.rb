class Grant < ActiveRecord::Base

  validates :title, presence: true, uniqueness: { message: "There is already a grant by this name" }
  validates :total_amount, presence: true, numericality: { greater_than: 0 }
  validates :submission_min, :submission_max, numericality: { greater_than: 0 }, allow_nil: true
  validates :submissions_close_at, :submissions_open_at, presence: true
 
  validate :valid_submission_window
  validate :valid_submission_amount_range

  def self.submissions_open
    where("submissions_open_at <= ? AND submissions_close_at > ?", DateTime.now, DateTime.now)
  end

  def submission_amount_range
    "$#{submission_min} - ${submission_max}" if submission_min.present?
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
      errors.add(:submissions_close_at, "End date must be in the future")
    end
  end

  def valid_submission_amount_range
    if submission_min.present? && submission_max.present?
      if submission_min >= submission_max
        errors.add(:submission_max, "max must be greater than min")
      end
      if submission_max > (total_amount || 0)
        errors.add(:submission_max, "max cannot be greater than total amount")
      end
    elsif submission_min.present? && !submission_max.present?
      errors.add(:submission_max, "if using a range both min and max must be set")
    elsif submission_max.present? && !submission_min.present?
      errors.add(:submission_min, "if using a range both min and max must be set")
    end
  end

end
