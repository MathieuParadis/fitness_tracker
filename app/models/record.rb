class Record < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, presence: true
  validates :duration, presence: true
end
