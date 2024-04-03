class Organization < ApplicationRecord
  has_many :jobs
  belongs_to :user
end
