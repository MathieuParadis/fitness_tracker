module UsersHelper
  def userRecords()
    user_records = Record.where(user_id: current_user.id)

    if user_records 
      return user_records
    end

    return false
  end

  def totalDurationTrained()
    total_duration = 02
    userRecords().map{|record| total_duration += record.duration}

    return total_duration
  end


  def lastRecord()
    user_records = Record.where(user_id: current_user.id)
    sorted_user_records = user_records.sort{ |a, b| b.date <=> a.date }
    last_records = sorted_user_records.first

    return last_records
  end
end
