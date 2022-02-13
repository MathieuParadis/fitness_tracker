module RecordsHelper
  def formattedDuration(duration_in_minutes)
    hours = duration_in_minutes / 60
    minutes = (duration_in_minutes) % 60

    if (hours != 0 && minutes != 0 ) 
      return "#{ hours } h #{ minutes } min"
    elsif (hours == 0 && minutes != 0 ) 
      return "#{ minutes } min"
    else 
      return "#{ hours } h"
    end
  end

  def formattedDate(date)
    formatted_date = date.strftime("%d / %m / %Y")
    return formatted_date
  end

end
