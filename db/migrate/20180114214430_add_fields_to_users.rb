class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :artist_name, :string, limit: 100
    add_column :users, :contact_name, :string, limit: 100
    add_column :users, :phone_number, :string, limit: 20
  end
end
