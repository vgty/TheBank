class AddCounselorIdToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :counselor_id, :integer
  end
end
