module UsersHelper
  def lastRecord()
    user_records = Record.where(user_id: current_user.id)
    sorted_user_records = user_records.sort{ |a, b| b.date <=> a.date }
    last_records = sorted_user_records.first

    return last_records
  end
end
