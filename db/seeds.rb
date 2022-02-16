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
mathieu = User.create(email: "mathieu.thp@yopmail.com", password: "azerty123", first_name: "Mathieu", last_name: "Paradis")
mathieu.avatar.attach(io: File.open('app/assets/images/avatar/koala_avatar.png'), filename: 'koala_avatar.png')

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

skateboarding = Activity.create(name: "Skate boarding")
skateboarding.picture.attach(io: File.open('app/assets/images/activities/skateboarding_blue.png'), filename: 'skateboarding_blue.png')
skateboarding.hoovered_picture.attach(io: File.open('app/assets/images/activities/skateboarding_white.png'), filename: 'skateboarding_white.png')

american_football = Activity.create(name: "American football")
american_football.picture.attach(io: File.open('app/assets/images/activities/american_football_blue.png'), filename: 'american_football_blue.png')
american_football.hoovered_picture.attach(io: File.open('app/assets/images/activities/american_football_white.png'), filename: 'american_football_white.png')

baseball = Activity.create(name: "Baseball")
baseball.picture.attach(io: File.open('app/assets/images/activities/baseball_blue.png'), filename: 'baseball_blue.png')
baseball.hoovered_picture.attach(io: File.open('app/assets/images/activities/baseball_white.png'), filename: 'baseball_white.png')

basket = Activity.create(name: "Basketball")
basket.picture.attach(io: File.open('app/assets/images/activities/basket_blue.png'), filename: 'basket_blue.png')
basket.hoovered_picture.attach(io: File.open('app/assets/images/activities/basket_white.png'), filename: 'basket_white.png')

football = Activity.create(name: "Football")
football.picture.attach(io: File.open('app/assets/images/activities/football_blue.png'), filename: 'football_blue.png')
football.hoovered_picture.attach(io: File.open('app/assets/images/activities/football_white.png'), filename: 'football_white.png')

horse_riding = Activity.create(name: "Horse riding")
horse_riding.picture.attach(io: File.open('app/assets/images/activities/horse_riding_blue.png'), filename: 'horse_riding_blue.png')
horse_riding.hoovered_picture.attach(io: File.open('app/assets/images/activities/horse_riding_white.png'), filename: 'horse_riding_white.png')

ice_hokey = Activity.create(name: "Ice hokey")
ice_hokey.picture.attach(io: File.open('app/assets/images/activities/ice_hokey_blue.png'), filename: 'ice_hokey_blue.png')
ice_hokey.hoovered_picture.attach(io: File.open('app/assets/images/activities/ice_hokey_white.png'), filename: 'ice_hokey_white.png')

ice_skating = Activity.create(name: "Ice skating")
ice_skating.picture.attach(io: File.open('app/assets/images/activities/ice_skating_blue.png'), filename: 'ice_skating_blue.png')
ice_skating.hoovered_picture.attach(io: File.open('app/assets/images/activities/ice_skating_white.png'), filename: 'ice_skating_white.png')

kayaking = Activity.create(name: "Kayaking")
kayaking.picture.attach(io: File.open('app/assets/images/activities/kayaking_blue.png'), filename: 'kayaking_blue.png')
kayaking.hoovered_picture.attach(io: File.open('app/assets/images/activities/kayaking_white.png'), filename: 'kayaking_white.png')

pingpong = Activity.create(name: "Ping pong")
pingpong.picture.attach(io: File.open('app/assets/images/activities/pingpong_blue.png'), filename: 'pingpong_blue.png')
pingpong.hoovered_picture.attach(io: File.open('app/assets/images/activities/pingpong_white.png'), filename: 'pingpong_white.png')

skiing = Activity.create(name: "Skiing")
skiing.picture.attach(io: File.open('app/assets/images/activities/skiing_blue.png'), filename: 'skiing_blue.png')
skiing.hoovered_picture.attach(io: File.open('app/assets/images/activities/skiing_white.png'), filename: 'skiing_white.png')

snowboarding = Activity.create(name: "Snow boarding")
snowboarding.picture.attach(io: File.open('app/assets/images/activities/snowboarding_blue.png'), filename: 'snowboarding_blue.png')
snowboarding.hoovered_picture.attach(io: File.open('app/assets/images/activities/snowboarding_white.png'), filename: 'snowboarding_white.png')

volley = Activity.create(name: "Volleyball")
volley.picture.attach(io: File.open('app/assets/images/activities/volley_blue.png'), filename: 'volley_blue.png')
volley.hoovered_picture.attach(io: File.open('app/assets/images/activities/volley_white.png'), filename: 'volley_white.png')



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
p Record.create(user: mathieu, activity: taekwondo, duration: 130, date: "2020-03-21")
p Record.create(user: mathieu, activity: golfing, duration: 223, date: "2021-04-19")
p Record.create(user: mathieu, activity: tennis, duration: 55, date: "2021-10-18")
p Record.create(user: mathieu, activity: badminton, duration: 60, date: "2021-12-08")
p Record.create(user: mathieu, activity: tennis, duration: 60, date: "2022-02-02")
p Record.create(user: mathieu, activity: boxing, duration: 60, date: "2022-02-14")



############################################

system("clear")
p "Seeding over"
p "Enjoy 🥃 !!!"
p "----------->"