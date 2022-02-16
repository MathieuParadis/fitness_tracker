class Record < ApplicationRecord
  # Relations
  belongs_to :user
  belongs_to :activity

  # Validations
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
