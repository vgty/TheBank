class AddCounselorIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :counselor_id, :integer
  end
end
