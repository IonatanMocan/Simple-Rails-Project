class AddUserIdToStatuses < ActiveRecord::Migration[5.2]
  def change
    add_column :statuses, user_id, :integer
    add_index :status, :user_id
    remove_column :statuses, :name
  end
end
