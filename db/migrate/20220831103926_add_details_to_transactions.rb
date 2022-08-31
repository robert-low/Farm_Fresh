class AddDetailsToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :quantity, :integer
    add_column :transactions, :comment, :text
    add_column :transactions, :start_date, :date
    add_column :transactions, :end_date, :date
  end
end
