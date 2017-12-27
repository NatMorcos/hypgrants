class RenameGrantAmountToTotalAmount < ActiveRecord::Migration
  def change
    rename_column :grants, :amount, :total_amount
  end
end
