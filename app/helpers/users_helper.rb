module UsersHelper
  def userRecords()
    user_records = Record.where(user_id: current_user.id)

    if user_records 
      return user_records
    end

    return false
  end

  def totalDurationTrained()
    total_duration = 0
    userRecords().map{|record| total_duration += record.duration}

    return total_duration
  end

  def userRecordsCurrentMonth()
    user_records = Record.where(user_id: current_user.id)
    user_records_current_month = []

    if user_records.where("date > ?", Date.today.at_beginning_of_month).any?
      user_records_current_month = user_records.where("date > ?", Date.today.at_beginning_of_month)
    end

    return user_records_current_month
  end

  def totalDurationTrainedCurrentMonth()
    total_duration = 0
    userRecordsCurrentMonth().map{|record| total_duration += record.duration}

    return total_duration
  end


  def lastRecord()
    user_records = Record.where(user_id: current_user.id)
    sorted_user_records = user_records.sort{ |a, b| b.date <=> a.date }
    last_records = sorted_user_records.first

    return last_records
  end

  def age(birthday)
    if (birthday)
      (Time.now.to_s(:number).to_i - birthday.to_time.to_s(:number).to_i)/10e9.to_i
    end
  end

end
