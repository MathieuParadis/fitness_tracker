class Record < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  # def formatted_duration(duration)
  #   hours = self.duration / 60
  #   minutes = (total_minute) % 60
  #   "#{ hours }h #{ minutes }min"
  # end
end
