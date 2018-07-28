class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.boolean :out, default: true
      t.integer :amount
      t.string :wording
      t.references :account, index: true
      t.timestamps
    end
  end
end
