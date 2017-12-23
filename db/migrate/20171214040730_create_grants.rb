class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.string :title
      t.decimal :amount
      t.datetime :submissions_open_at
      t.datetime :submissions_close_at

      t.timestamps null: false
    end
  end
end
