class Activity < ApplicationRecord
  has_one_attached :picture
  has_one_attached :hoovered_picture

  has_many :records
end
