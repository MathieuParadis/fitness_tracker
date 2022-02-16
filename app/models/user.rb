class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relations
  has_one_attached :avatar
  has_many :records  

  # Validations
  validate :correctDateOfBirth?

  # Gender options
  enum gender: [:unknown, :male, :female, :other]

  def correctDateOfBirth?
    if self.date_of_birth
      errors.add(:date, "cannot be in future") unless
      self.date_of_birth < Date.today
    end
  end
  
end