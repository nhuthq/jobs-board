class AddAvatarToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :avatar, :string
  end
end
