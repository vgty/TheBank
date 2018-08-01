class RenameColumnInAccountType < ActiveRecord::Migration[5.2]
  def change
    rename_column :saving_account_types, :wording, :name
  end
end
