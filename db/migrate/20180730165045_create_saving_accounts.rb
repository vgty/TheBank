class CreateSavingAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :saving_accounts do |t|
      t.string :unique_id
      t.string :name
      t.references :user, index: true
      t.references :saving_account_type, index: true
      t.timestamps
    end
  end
end
