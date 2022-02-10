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


############################################

p 'USERS'
p User.create(email: "mathieu.thp@yopmail.com", password: "azerty123", first_name: "Mathieu", last_name: "Paradis")

p "-" * 50

p 'ACTIVITIES'
p Activity.create(name: "Walking")
p Activity.create(name: "Running")
p Activity.create(name: "Cycling")
p Activity.create(name: "Swimming")
p Activity.create(name: "Hiking")
p Activity.create(name: "Boxing")
p Activity.create(name: "Taekwondo")
p Activity.create(name: "Fencing")
p Activity.create(name: "Golfing")
p Activity.create(name: "Tennis")
p Activity.create(name: "Badminton")
p Activity.create(name: "Skateboarding")

p "-" * 50

p 'RECORDS'
mathieu = User.find_by(first_name: "Mathieu", last_name: "Paradis")
walking = Activity.find_by(name: "Walking")
running = Activity.find_by(name: "Running")
cycling = Activity.find_by(name: "Cycling")
swimming = Activity.find_by(name: "Swimming")
hiking = Activity.find_by(name: "Hiking")
boxing = Activity.find_by(name: "Boxing")
taekwondo = Activity.find_by(name: "Taekwondo")
fencing = Activity.find_by(name: "Fencing")
tennis = Activity.find_by(name: "Tennis")
badminton = Activity.find_by(name: "Badminton")
skateboarding = Activity.find_by(name: "Skateboarding")

p Record.create(user: mathieu, activity: badminton, duration: 60, date: "2021-12-08")
p Record.create(user: mathieu, activity: walking, duration: 40, date: "2022-01-02")
p Record.create(user: mathieu, activity: running, duration: 120, date: "2022-01-22")



############################################

system("clear")
p "Enjoy 🥃 !!!"
p "----------->"