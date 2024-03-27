class AddUserIdToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :user_id, :integer
  end
end
