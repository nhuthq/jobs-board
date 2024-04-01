class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :level
      t.string :job_type
      t.string :location
      t.string :job_author
      t.boolean :remoteable
      t.string :apply_url
      t.boolean :is_published
      t.datetime :published_at
      t.timestamps
    end
  end
end
