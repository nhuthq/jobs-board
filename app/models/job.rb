class Job < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  JOB_TYPES = ['Full-time', 'Part-time', 'Contract', 'Freelance']
end
