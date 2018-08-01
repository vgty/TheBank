class CreateCounselors < ActiveRecord::Migration[5.2]
  def change
    create_table :counselors do |t|
      t.string :name
      t.string :last_name
      t.timestamps
    end
  end
end
