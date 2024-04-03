class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :status
      t.string :images
      t.string :slogan
      t.string :address
      t.string :country
      t.string :tax_code
      t.boolean :ot_policy
      t.string :description
      t.string :landing_page
      t.string :company_type
      t.string :company_size
      t.string :working_days
      t.string :profile_image
      t.string :short_description
      t.datetime :published_at
      t.timestamps
    end
  end
end
