class AddCounselorIdToSavingAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :saving_accounts, :counselor_id, :integer
  end
end
