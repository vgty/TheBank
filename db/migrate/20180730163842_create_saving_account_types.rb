class CreateSavingAccountTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :saving_account_types do |t|
      t.string :wording
      t.float :interest_rate

      t.timestamps
    end
  end
end
