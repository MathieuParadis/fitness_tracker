class Record < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, presence: true
  validates :duration, presence: true
  validate :correctDate?

  def correctDate?
    if self.date
      errors.add(:date, "cannot be in future") unless
      self.date <= Date.today
    end
  end

end
