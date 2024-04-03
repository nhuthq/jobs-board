class AddOrganizationIdToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :organization_id, :integer
  end
end
