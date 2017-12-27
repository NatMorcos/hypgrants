class AddSubmissionAmountRangeToGrant < ActiveRecord::Migration
  def change
    add_column :grants, :submission_min, :decimal
    add_column :grants, :submission_max, :decimal
  end
end
