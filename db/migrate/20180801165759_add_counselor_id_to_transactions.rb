class AddCounselorIdToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :counselor_id, :integer
  end
end
