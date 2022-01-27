p "*" * 50
p " " * 50
p "                 STARTING SEEDING                 "
p " " * 50
p "*" * 50

p "Destroy curent data..."

p "Destroying Users... #{User.count} "
User.destroy_all

p "Destroying Activities... #{Activity.count} "
Activity.destroy_all

p "Destroying Records... #{Record.count} "
Record.destroy_all

p "-" * 50
p "-" * 50

############################################
users_number = 5
users_count = 0
activities_number = 10
activities_count = 0
records_number = 50
records_count = 0
############################################










############################################

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"