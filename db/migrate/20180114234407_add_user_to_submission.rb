class AddUserToSubmission < ActiveRecord::Migration
  def change
    add_reference :submissions, :user, null: false
    add_index :submissions, :user_id
  end
end
