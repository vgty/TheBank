class AddCounselorIdToLitigations < ActiveRecord::Migration[5.2]
  def change
    add_column :litigations, :counselor_id, :integer
  end
end
