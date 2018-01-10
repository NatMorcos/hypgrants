class CreateGrantSubmissions < ActiveRecord::Migration
  def change
    create_table :grant_submissions do |t|
      t.references :grant
      t.references :submission
      t.string :status

      t.timestamps null: false
    end
  end
end
