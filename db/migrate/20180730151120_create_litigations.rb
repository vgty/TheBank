class CreateLitigations < ActiveRecord::Migration[5.2]
  def change
    create_table :litigations do |t|
      t.text :cause
      t.string :identifier
      t.string :status
      t.references :transaction, index: true
      t.timestamps
    end
  end
end
