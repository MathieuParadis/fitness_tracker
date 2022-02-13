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
walking.picture.attach(io: File.open('app/assets/images/activities/walking_blue.png'), filename: 'walking_blue.png')
walking.hoovered_picture.attach(io: File.open('app/assets/images/activities/walking_white.png'), filename: 'walking_white.png')

running = Activity.create(name: "Running")
running.picture.attach(io: File.open('app/assets/images/activities/running_blue.png'), filename: 'running_blue.png')
running.hoovered_picture.attach(io: File.open('app/assets/images/activities/running_white.png'), filename: 'running_white.png')

cycling = Activity.create(name: "Cycling")
cycling.picture.attach(io: File.open('app/assets/images/activities/cycling_blue.png'), filename: 'cycling_blue.png')
cycling.hoovered_picture.attach(io: File.open('app/assets/images/activities/cycling_white.png'), filename: 'cycling_white.png')

swimming = Activity.create(name: "Swimming")
swimming.picture.attach(io: File.open('app/assets/images/activities/swimming_blue.png'), filename: 'swimming_blue.png')
swimming.hoovered_picture.attach(io: File.open('app/assets/images/activities/swimming_white.png'), filename: 'swimming_white.png')

hiking = Activity.create(name: "Hiking")
hiking.picture.attach(io: File.open('app/assets/images/activities/hiking_blue.png'), filename: 'hiking_blue.png')
hiking.hoovered_picture.attach(io: File.open('app/assets/images/activities/hiking_white.png'), filename: 'hiking_white.png')

boxing = Activity.create(name: "Boxing")
boxing.picture.attach(io: File.open('app/assets/images/activities/boxing_blue.png'), filename: 'boxing_blue.png')
boxing.hoovered_picture.attach(io: File.open('app/assets/images/activities/boxing_white.png'), filename: 'boxing_white.png')

taekwondo = Activity.create(name: "Taekwondo")
taekwondo.picture.attach(io: File.open('app/assets/images/activities/taekwondo_blue.png'), filename: 'taekwondo_blue.png')
taekwondo.hoovered_picture.attach(io: File.open('app/assets/images/activities/taekwondo_white.png'), filename: 'taekwondo_white.png')

fencing = Activity.create(name: "Fencing")
fencing.picture.attach(io: File.open('app/assets/images/activities/fencing_blue.png'), filename: 'fencing_blue.png')
fencing.hoovered_picture.attach(io: File.open('app/assets/images/activities/fencing_white.png'), filename: 'fencing_white.png')

golfing = Activity.create(name: "Golfing")
golfing.picture.attach(io: File.open('app/assets/images/activities/golfing_blue.png'), filename: 'golfing_blue.png')
golfing.hoovered_picture.attach(io: File.open('app/assets/images/activities/golfing_white.png'), filename: 'golfing_white.png')

tennis = Activity.create(name: "Tennis")
tennis.picture.attach(io: File.open('app/assets/images/activities/tennis_blue.png'), filename: 'tennis_blue.png')
tennis.hoovered_picture.attach(io: File.open('app/assets/images/activities/tennis_white.png'), filename: 'tennis_white.png')

badminton = Activity.create(name: "Badminton")
badminton.picture.attach(io: File.open('app/assets/images/activities/badminton_blue.png'), filename: 'badminton_blue.png')
badminton.hoovered_picture.attach(io: File.open('app/assets/images/activities/badminton_white.png'), filename: 'badminton_white.png')

skateboarding = Activity.create(name: "Skateboarding")
skateboarding.picture.attach(io: File.open('app/assets/images/activities/skateboarding_blue.png'), filename: 'skateboarding_blue.png')
skateboarding.hoovered_picture.attach(io: File.open('app/assets/images/activities/skateboarding_white.png'), filename: 'skateboarding_white.png')

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