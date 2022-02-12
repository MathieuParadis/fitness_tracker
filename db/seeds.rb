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
User.create(email: "mathieu.thp@yopmail.com", password: "azerty123", first_name: "Mathieu", last_name: "Paradis")

p "-" * 50

p 'ACTIVITIES'
walking = Activity.create(name: "Walking")
walking.picture.attach(io: File.open('app/assets/images/walking_white.svg'), filename: 'walking_white.svg')
walking.hoovered_picture.attach(io: File.open('app/assets/images/walking_blue.svg'), filename: 'walking_blue.svg')

running = Activity.create(name: "Running")
running.picture.attach(io: File.open('app/assets/images/running_white.svg'), filename: 'running_white.svg')
running.hoovered_picture.attach(io: File.open('app/assets/images/running_blue.svg'), filename: 'running_blue.svg')

cycling = Activity.create(name: "Cycling")
cycling.picture.attach(io: File.open('app/assets/images/cycling_white.svg'), filename: 'cycling_white.svg')
cycling.hoovered_picture.attach(io: File.open('app/assets/images/cycling_blue.svg'), filename: 'cycling_blue.svg')

swimming = Activity.create(name: "Swimming")
swimming.picture.attach(io: File.open('app/assets/images/swimming_white.svg'), filename: 'swimming_white.svg')
swimming.hoovered_picture.attach(io: File.open('app/assets/images/swimming_blue.svg'), filename: 'swimming_blue.svg')

hiking = Activity.create(name: "Hiking")
hiking.picture.attach(io: File.open('app/assets/images/hiking_white.svg'), filename: 'hiking_white.svg')
hiking.hoovered_picture.attach(io: File.open('app/assets/images/hiking_blue.svg'), filename: 'hiking_blue.svg')

boxing = Activity.create(name: "Boxing")
boxing.picture.attach(io: File.open('app/assets/images/boxing_white.svg'), filename: 'boxing_white.svg')
boxing.hoovered_picture.attach(io: File.open('app/assets/images/boxing_blue.svg'), filename: 'boxing_blue.svg')

taekwondo = Activity.create(name: "Taekwondo")
taekwondo.picture.attach(io: File.open('app/assets/images/taekwondo_white.svg'), filename: 'taekwondo_white.svg')
taekwondo.hoovered_picture.attach(io: File.open('app/assets/images/taekwondo_blue.svg'), filename: 'taekwondo_blue.svg')

fencing = Activity.create(name: "Fencing")
fencing.picture.attach(io: File.open('app/assets/images/fencing_white.svg'), filename: 'fencing_white.svg')
fencing.hoovered_picture.attach(io: File.open('app/assets/images/fencing_blue.svg'), filename: 'fencing_blue.svg')

golfing = Activity.create(name: "Golfing")
golfing.picture.attach(io: File.open('app/assets/images/golfing_white.svg'), filename: 'golfing_white.svg')
golfing.hoovered_picture.attach(io: File.open('app/assets/images/golfing_blue.svg'), filename: 'golfing_blue.svg')

tennis = Activity.create(name: "Tennis")
tennis.picture.attach(io: File.open('app/assets/images/tennis_white.svg'), filename: 'tennis_white.svg')
tennis.hoovered_picture.attach(io: File.open('app/assets/images/tennis_blue.svg'), filename: 'tennis_blue.svg')

badminton = Activity.create(name: "Badminton")
badminton.picture.attach(io: File.open('app/assets/images/badminton_white.svg'), filename: 'badminton_white.svg')
badminton.hoovered_picture.attach(io: File.open('app/assets/images/badminton_blue.svg'), filename: 'badminton_blue.svg')

skateboarding = Activity.create(name: "Skateboarding")
skateboarding.picture.attach(io: File.open('app/assets/images/skateboarding_white.svg'), filename: 'skateboarding_white.svg')
skateboarding.hoovered_picture.attach(io: File.open('app/assets/images/skateboarding_blue.svg'), filename: 'skateboarding_blue.svg')

p "-" * 50

p 'RECORDS'
mathieu = User.find_by(first_name: "Mathieu")
walking = Activity.find_by(name: "Walking")
running = Activity.find_by(name: "Running")
cycling = Activity.find_by(name: "Cycling")
swimming = Activity.find_by(name: "Swimming")
hiking = Activity.find_by(name: "Hiking")
boxing = Activity.find_by(name: "Boxing")
taekwondo = Activity.find_by(name: "Taekwondo")
fencing = Activity.find_by(name: "Fencing")
golfing = Activity.find_by(name: "Golfing")
tennis = Activity.find_by(name: "Tennis")
badminton = Activity.find_by(name: "Badminton")
skateboarding = Activity.find_by(name: "Skateboarding")

p Record.create(user: mathieu, activity: walking, duration: 40, date: "2022-01-02")
p Record.create(user: mathieu, activity: running, duration: 120, date: "2022-01-22")
p Record.create(user: mathieu, activity: taekwondo, duration: 130, date: "2022-03-21")
p Record.create(user: mathieu, activity: golfing, duration: 223, date: "2022-04-19")
p Record.create(user: mathieu, activity: tennis, duration: 55, date: "2022-10-18")
p Record.create(user: mathieu, activity: badminton, duration: 60, date: "2021-12-08")

############################################

system("clear")
p "Seeding over"
p "Enjoy 🥃 !!!"
p "----------->"