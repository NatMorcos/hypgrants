class MassageSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :completed_at, :datetime
    add_column :submissions, :data, :json

    remove_column :submissions, :description

  end
end
