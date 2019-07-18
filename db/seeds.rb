# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Trophy.destroy_all

pierce = User.create!(email: 'pierce@pierce.com', password: '123456', username: 'PIERCE9000', bio: 'Born in Bangalore, I brought the best of India to America where I am focusing on allowing my users to conquer time.  I adopted Benjamin Franklins last name in order to super duper own procrastination.', location: 'Kyoto', age: 25, gender: 'male', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563344762/pierce_yzd7ae.png")
pontus = User.create!(email: 'pontus@pontus.com', password: '123456', username: 'THE_PONT5000', bio: 'Born in Sweden, I brought the best of Ikea to Kyoto where I am focusing on bringing beauty to even the dullest websites!  I am sick of Ikea and POTUS jokes!', location: 'Kyoto', age: 24, gender: 'male', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563344748/pontus_g070x5.jpg")
lena = User.create!(email: 'lena@lena.com', password: '123456', username: 'The Lenanator', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563344740/lena_cznwhg.png")
forrest = User.create!(email: 'forest@forest.com', password: '123456', username: 'Forrest Dweller', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563348296/forrest_gkpe5k.jpg")
tanaka = User.create!(email: 'tanaka@tanaka.com', password: '123456', username: 'Tanaka you out', avatar: "https://res.cloudinary.com/letsbuildmuscles/image/upload/v1563348213/images/im1_quti8e.jpg")
yann = User.create!(email: 'yann@yann.com', password: '123456', username: 'Yann Garde', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563348282/yann_yc79ap.jpg")
sylvain = User.create!(email: 'sylvain@sylvain.com', password: '123456', username: 'SYLVAIN2000', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563349265/sylvain_q9c8so.png")
alex = User.create!(email: 'alex@alex.com', password: '123456', username: 'CoCo Master 900', avatar: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563348496/alex_dwkx1m.png")
chris = User.create!(email: 'chris@chris.com', password: '123456', username: 'AlaBadaNada', avatar: "https://res.cloudinary.com/letsbuildmuscles/image/upload/v1563348212/images/im2_iotwpq.jpg")
leet = User.create!(email: 'leet@leet.com', password: '123456', username: 'LeEtSaWzE', avatar: "https://res.cloudinary.com/letsbuildmuscles/image/upload/v1563348212/images/im7_l1upsv.jpg")

entry1 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (pierce.journals.find_by title: "Fitness"))
entry2 = Entry.create!(goal: "Be able to do a handstand", date: Date.today, journal: (pierce.journals.find_by title: "Fitness"))
entry3 = Entry.create!(goal: "5 minute mile", date: Date.today, journal: (pierce.journals.find_by title: "Fitness"))

entry4 = Entry.create!(goal: 'Be more positive', date: Date.today, journal: (pierce.journals.find_by title: "Spirituality"))
entry5 = Entry.create!(goal: 'Do more selfless service', date: Date.today, journal: (pierce.journals.find_by title: "Spirituality"))
entry6 = Entry.create!(goal: 'Rid myself of addictions', date: Date.today, journal: (pierce.journals.find_by title: "Spirituality"))

entry7 = Entry.create!(goal: 'Become a minimalist', date: Date.today, journal: (pierce.journals.find_by title: "Lifestyle"))
entry8 = Entry.create!(goal: 'Learn Japanese', date: Date.today, journal: (pierce.journals.find_by title: "Lifestyle"))
entry9 = Entry.create!(goal: 'Learn Guitar', date: Date.today, journal: (pierce.journals.find_by title: "Lifestyle"))

entry10 = Entry.create!(goal: 'Learn to program', date: Date.today, journal: (pierce.journals.find_by title: "Career"))
entry11 = Entry.create!(goal: 'Scale up Business', date: Date.today, journal: (pierce.journals.find_by title: "Career"))
entry12 = Entry.create!(goal: 'Explore alternative income', date: Date.today, journal: (pierce.journals.find_by title: "Career"))

entry13 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (pontus.journals.find_by title: "Fitness"))
entry14 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (lena.journals.find_by title: "Fitness"))
entry15 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (forrest.journals.find_by title: "Fitness"))
entry16 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (yann.journals.find_by title: "Fitness"))

entry17 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (tanaka.journals.find_by title: "Fitness"))
entry18 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (sylvain.journals.find_by title: "Fitness"))
entry19 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (alex.journals.find_by title: "Fitness"))
entry20 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (chris.journals.find_by title: "Fitness"))
entry21 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal: (leet.journals.find_by title: "Fitness"))




milestone1 = Milestone.create!(title: 'Yoga', entry: entry1)
milestone2 = Milestone.create!(title: 'Wim Hof Method', entry: entry1)
milestone3 = Milestone.create!(title: 'Cook my own food', entry: entry1)


milestone4 = Milestone.create!(title: 'Crow pose', entry: entry2)
milestone5 = Milestone.create!(title: 'Wrist exercise', entry: entry2)
milestone6 = Milestone.create!(title: 'Supported handstand pushups', entry: entry2)


milestone7 = Milestone.create!(title: 'Jogging', entry: entry3)
milestone8 = Milestone.create!(title: 'Weightlifting', entry: entry3)
milestone9 = Milestone.create!(title: 'Physiotherapy', entry: entry3)


milestone10 = Milestone.create!(title: 'Gratitude Journal', entry: entry4)
milestone11 = Milestone.create!(title: 'Positive visualization', entry: entry4)
milestone12 = Milestone.create!(title: 'Difficult task without complaining', entry: entry4)


milestone13 = Milestone.create!(title: 'Write blogs', entry: entry5)
milestone14 = Milestone.create!(title: 'Volunteer', entry: entry5)
milestone15 = Milestone.create!(title: 'Write free articles', entry: entry5)


milestone16 = Milestone.create!(title: 'Read about addictions', entry: entry6)
milestone17 = Milestone.create!(title: 'Help others with addictions', entry: entry6)
milestone18 = Milestone.create!(title: 'Meditate', entry: entry6)


milestone19 = Milestone.create!(title: 'Make list of all items', entry: entry7)
milestone20 = Milestone.create!(title: 'Marie Condo Technique', entry: entry7)
milestone21 = Milestone.create!(title: 'Clean and organize', entry: entry7)


milestone22 = Milestone.create!(title: 'Listen to audiobook', entry: entry8)
milestone23 = Milestone.create!(title: 'Speak in Japanese', entry: entry8)
milestone24 = Milestone.create!(title: 'Review vocabulary', entry: entry8)

milestone25 = Milestone.create!(title: 'Practice chords', entry: entry9)
milestone26 = Milestone.create!(title: 'Practice a song', entry: entry9)
milestone27 = Milestone.create!(title: 'Scales', entry: entry9)


milestone28 = Milestone.create!(title: 'Codecademy', entry: entry10)
milestone29 = Milestone.create!(title: 'Work on Conquered Time', entry: entry10)
milestone30 = Milestone.create!(title: 'Ruby Wars', entry: entry10)


milestone31 = Milestone.create!(title: 'SEO', entry: entry11)
milestone32 = Milestone.create!(title: 'Reachout to Influencers', entry: entry11)
milestone33 = Milestone.create!(title: 'Interview Customers', entry: entry11)


milestone34 = Milestone.create!(title: 'Real Estate', entry: entry12)
milestone35 = Milestone.create!(title: 'Stocks/crypto', entry: entry12)
milestone36 = Milestone.create!(title: 'Freelance', entry: entry12)

milestone37 = Milestone.create!(title: 'Freelance', entry: entry13)
milestone38 = Milestone.create!(title: 'Freelance', entry: entry14)
milestone39 = Milestone.create!(title: 'Freelance', entry: entry15)
milestone40 = Milestone.create!(title: 'Freelance', entry: entry16)

milestone41 = Milestone.create!(title: 'Freelance', entry: entry17)
milestone42 = Milestone.create!(title: 'Freelance', entry: entry18)
milestone43 = Milestone.create!(title: 'Freelance', entry: entry19)
milestone44 = Milestone.create!(title: 'Freelance', entry: entry20)
milestone45 = Milestone.create!(title: 'Freelance', entry: entry21)



pomodoro1 = Pomodoro.create!(milestone: milestone1, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 5)
pomodoro2 = Pomodoro.create!(milestone: milestone2, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 4)
pomodoro3 = Pomodoro.create!(milestone: milestone3, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 5)
pomodoro4 = Pomodoro.create!(milestone: milestone4, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 3)
pomodoro5 = Pomodoro.create!(milestone: milestone5, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 4)
pomodoro6 = Pomodoro.create!(milestone: milestone6, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 4)
pomodoro7 = Pomodoro.create!(milestone: milestone7, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 3)
pomodoro8 = Pomodoro.create!(milestone: milestone8, start: (DateTime.now - 34.minutes), end: DateTime.now, stars: 4)
pomodoro9 = Pomodoro.create!(milestone: milestone9, start: (DateTime.now - 34.minutes), end: DateTime.now, stars: 5)
pomodoro10 = Pomodoro.create!(milestone: milestone10, start: (DateTime.now - 32.minutes), end: DateTime.now, stars: 4)
pomodoro11 = Pomodoro.create!(milestone: milestone11, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 4)
pomodoro12 = Pomodoro.create!(milestone: milestone12, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 2)
pomodoro13 = Pomodoro.create!(milestone: milestone13, start: (DateTime.now - 5.minutes), end: DateTime.now, stars: 4)
pomodoro14 = Pomodoro.create!(milestone: milestone14, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 4)
pomodoro15 = Pomodoro.create!(milestone: milestone15, start: (DateTime.now - 15.minutes), end: DateTime.now, stars: 5)
pomodoro16 = Pomodoro.create!(milestone: milestone16, start: (DateTime.now - 28.minutes), end: DateTime.now, stars: 5)
pomodoro17 = Pomodoro.create!(milestone: milestone17, start: (DateTime.now - 29.minutes), end: DateTime.now, stars: 4)
pomodoro18 = Pomodoro.create!(milestone: milestone18, start: (DateTime.now - 23.minutes), end: DateTime.now, stars: 3)
pomodoro19 = Pomodoro.create!(milestone: milestone19, start: (DateTime.now - 15.minutes), end: DateTime.now, stars: 3)
pomodoro20 = Pomodoro.create!(milestone: milestone20, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 3)
pomodoro21 = Pomodoro.create!(milestone: milestone21, start: (DateTime.now - 35.minutes), end: DateTime.now, stars: 3)
pomodoro22 = Pomodoro.create!(milestone: milestone22, start: (DateTime.now - 17.minutes), end: DateTime.now, stars: 4)
pomodoro23 = Pomodoro.create!(milestone: milestone23, start: (DateTime.now - 19.minutes), end: DateTime.now, stars: 4)
pomodoro24 = Pomodoro.create!(milestone: milestone24, start: (DateTime.now - 22.minutes), end: DateTime.now, stars: 5)
pomodoro25 = Pomodoro.create!(milestone: milestone25, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 5)
pomodoro26 = Pomodoro.create!(milestone: milestone26, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 5)
pomodoro27 = Pomodoro.create!(milestone: milestone27, start: (DateTime.now - 25.minutes), end: DateTime.now, stars: 4)
pomodoro28 = Pomodoro.create!(milestone: milestone28, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 4)
pomodoro29 = Pomodoro.create!(milestone: milestone29, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 5)
pomodoro30 = Pomodoro.create!(milestone: milestone30, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 4)
pomodoro31 = Pomodoro.create!(milestone: milestone31, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 5)
pomodoro32 = Pomodoro.create!(milestone: milestone32, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 5)
pomodoro33 = Pomodoro.create!(milestone: milestone33, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 3)
pomodoro34 = Pomodoro.create!(milestone: milestone34, start: (DateTime.now - 33.minutes), end: DateTime.now, stars: 3)
pomodoro35 = Pomodoro.create!(milestone: milestone35, start: (DateTime.now - 34.minutes), end: DateTime.now, stars: 3)
pomodoro36 = Pomodoro.create!(milestone: milestone36, start: (DateTime.now - 34.minutes), end: DateTime.now, stars: 3)
pomodoro37 = Pomodoro.create!(milestone: milestone37, start: (DateTime.now - 322.minutes), end: DateTime.now, stars: 3)
pomodoro38 = Pomodoro.create!(milestone: milestone38, start: (DateTime.now - 520.minutes), end: DateTime.now, stars: 4)
pomodoro39 = Pomodoro.create!(milestone: milestone39, start: (DateTime.now - 125.minutes), end: DateTime.now, stars: 4)
pomodoro40 = Pomodoro.create!(milestone: milestone40, start: (DateTime.now - 321.minutes), end: DateTime.now, stars: 4)

pomodoro41 = Pomodoro.create!(milestone: milestone41, start: (DateTime.now - 134.minutes), end: DateTime.now, stars: 3)
pomodoro42 = Pomodoro.create!(milestone: milestone42, start: (DateTime.now - 122.minutes), end: DateTime.now, stars: 3)
pomodoro43 = Pomodoro.create!(milestone: milestone43, start: (DateTime.now - 225.minutes), end: DateTime.now, stars: 4)
pomodoro44 = Pomodoro.create!(milestone: milestone44, start: (DateTime.now - 115.minutes), end: DateTime.now, stars: 4)
pomodoro45 = Pomodoro.create!(milestone: milestone45, start: (DateTime.now - 45.minutes), end: DateTime.now, stars: 4)



trophy1 = Trophy.create!(name: "Wow awesome job! Have a trophy.", image:"")
trophy2 = Trophy.create!(name: "Got started on a new journey.", image:"")
