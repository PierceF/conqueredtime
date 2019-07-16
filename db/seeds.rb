# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


pierce = User.create!(email: 'pierce@pierce.com', password: '123456', username: 'PIERCE9000', bio: 'Born in Bangalore, I brought the best of India to America where I am focusing on allowing my users to conquer time.  I adopted Benjamin Franklins last name in order to super duper own procrastination.', location: 'Kyoto', age: 25, gender: 'male')
pontus = User.create!(email: 'pontus@pontus.com', password: '123456', username: 'THE_PONT5000', bio: 'Born in Sweden, I brought the best of Ikea to Kyoto where I am focusing on bringing beauty to even the dullest websites!  I am sick of Ikea and POTUS jokes!', location: 'Kyoto', age: 24, gender: 'male')


entry1 = Entry.create!(goal: "Achieve 15% bodyfat", date: Date.today, journal_id: 1)
entry2 = Entry.create!(goal: "Be able to do a handstand", date: Date.today, journal_id: 1)
entry3 = Entry.create!(goal: "5 minute mile", date: Date.today, journal_id: 1)

entry4 = Entry.create!(goal: 'Be more positive', date: Date.today, journal_id: 2)
entry5 = Entry.create!(goal: 'Do more selfless service', date: Date.today, journal_id: 2)
entry6 = Entry.create!(goal: 'Rid myself of addictions', date: Date.today, journal_id: 2)

entry7 = Entry.create!(goal: 'Become a minimalist', date: Date.today, journal_id: 3)
entry8 = Entry.create!(goal: 'Learn Japanese', date: Date.today, journal_id: 3)
entry9 = Entry.create!(goal: 'Learn Guitar', date: Date.today, journal_id: 3)

entry10 = Entry.create!(goal: 'Learn to program', date: Date.today, journal_id: 4)
entry11 = Entry.create!(goal: 'Scale up Business', date: Date.today, journal_id: 4)
entry12 = Entry.create!(goal: 'Explore alternative income', date: Date.today, journal_id: 4)



milestone1 = Milestone.create!(title: 'Yoga', entry_id: 1)
milestone2 = Milestone.create!(title: 'Wim Hof Method', entry_id: 1)
milestone3 = Milestone.create!(title: 'Cook my own food', entry_id: 1)


milestone4 = Milestone.create!(title: 'Crow pose', entry_id: 2)
milestone5 = Milestone.create!(title: 'Wrist exercise', entry_id: 2)
milestone6 = Milestone.create!(title: 'Supported handstand pushups', entry_id: 2)


milestone7 = Milestone.create!(title: 'Jogging', entry_id: 3)
milestone8 = Milestone.create!(title: 'Weightlifting', entry_id: 3)
milestone9 = Milestone.create!(title: 'Physiotherapy', entry_id: 3)


milestone10 = Milestone.create!(title: 'Gratitude Journal', entry_id: 4)
milestone11 = Milestone.create!(title: 'Positive visualization', entry_id: 4)
milestone12 = Milestone.create!(title: 'Difficult task without complaining', entry_id: 4)


milestone13 = Milestone.create!(title: 'Write blogs', entry_id: 5)
milestone14 = Milestone.create!(title: 'Volunteer', entry_id: 5)
milestone15 = Milestone.create!(title: 'Write free articles', entry_id: 5)


milestone16 = Milestone.create!(title: 'Read about addictions', entry_id: 6)
milestone17 = Milestone.create!(title: 'Help others with addictions', entry_id: 6)
milestone18 = Milestone.create!(title: 'Meditate', entry_id: 6)


milestone19 = Milestone.create!(title: 'Make list of all items', entry_id: 7)
milestone20 = Milestone.create!(title: 'Marie Condo Technique', entry_id: 7)
milestone21 = Milestone.create!(title: 'Clean and organize', entry_id: 7)


milestone22 = Milestone.create!(title: 'Listen to audiobook', entry_id: 8)
milestone23 = Milestone.create!(title: 'Speak in Japanese', entry_id: 8)
milestone24 = Milestone.create!(title: 'Review vocabulary', entry_id: 8)

milestone25 = Milestone.create!(title: 'Practice chords', entry_id: 9)
milestone26 = Milestone.create!(title: 'Practice a song', entry_id: 9)
milestone27 = Milestone.create!(title: 'Scales', entry_id: 9)


milestone28 = Milestone.create!(title: 'Codecademy', entry_id: 10)
milestone29 = Milestone.create!(title: 'Work on Conquered Time', entry_id: 10)
milestone30 = Milestone.create!(title: 'Ruby Wars', entry_id: 10)


milestone31 = Milestone.create!(title: 'SEO', entry_id: 11)
milestone32 = Milestone.create!(title: 'Reachout to Influencers', entry_id: 11)
milestone33 = Milestone.create!(title: 'Interview Customers', entry_id: 11)


milestone34 = Milestone.create!(title: 'Real Estate', entry_id: 12)
milestone35 = Milestone.create!(title: 'Stocks/crypto', entry_id: 12)
milestone36 = Milestone.create!(title: 'Freelance', entry_id: 12)




pomodoro1 = Pomodoro.create!(milestone_id: 1, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro2 = Pomodoro.create!(milestone_id: 2, start: (DateTime.now - 325.minutes), end: DateTime.now)
pomodoro3 = Pomodoro.create!(milestone_id: 3, start: (DateTime.now - 1225.minutes), end: DateTime.now)
pomodoro4 = Pomodoro.create!(milestone_id: 4, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro5 = Pomodoro.create!(milestone_id: 5, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro6 = Pomodoro.create!(milestone_id: 6, start: (DateTime.now - 325.minutes), end: DateTime.now)
pomodoro7 = Pomodoro.create!(milestone_id: 7, start: (DateTime.now - 1225.minutes), end: DateTime.now)
pomodoro8 = Pomodoro.create!(milestone_id: 8, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro9 = Pomodoro.create!(milestone_id: 9, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro10 = Pomodoro.create!(milestone_id: 10, start: (DateTime.now - 325.minutes), end: DateTime.now)
pomodoro11 = Pomodoro.create!(milestone_id: 11, start: (DateTime.now - 1225.minutes), end: DateTime.now)
pomodoro12 = Pomodoro.create!(milestone_id: 12, start: (DateTime.now - 25.minutes), end: DateTime.now)
pomodoro13 = Pomodoro.create!(milestone_id: 13, start: (DateTime.now - 125.minutes), end: DateTime.now)
pomodoro14 = Pomodoro.create!(milestone_id: 14, start: (DateTime.now - 525.minutes), end: DateTime.now)
pomodoro15 = Pomodoro.create!(milestone_id: 15, start: (DateTime.now - 15.minutes), end: DateTime.now)
pomodoro16 = Pomodoro.create!(milestone_id: 16, start: (DateTime.now - 28.minutes), end: DateTime.now)
pomodoro17 = Pomodoro.create!(milestone_id: 17, start: (DateTime.now - 229.minutes), end: DateTime.now)
pomodoro18 = Pomodoro.create!(milestone_id: 18, start: (DateTime.now - 323.minutes), end: DateTime.now)
pomodoro19 = Pomodoro.create!(milestone_id: 19, start: (DateTime.now - 15.minutes), end: DateTime.now)
pomodoro20 = Pomodoro.create!(milestone_id: 20, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro21 = Pomodoro.create!(milestone_id: 21, start: (DateTime.now - 235.minutes), end: DateTime.now)
pomodoro22 = Pomodoro.create!(milestone_id: 22, start: (DateTime.now - 17.minutes), end: DateTime.now)
pomodoro23 = Pomodoro.create!(milestone_id: 23, start: (DateTime.now - 19.minutes), end: DateTime.now)
pomodoro24 = Pomodoro.create!(milestone_id: 24, start: (DateTime.now - 22.minutes), end: DateTime.now)
pomodoro25 = Pomodoro.create!(milestone_id: 25, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro26 = Pomodoro.create!(milestone_id: 26, start: (DateTime.now - 325.minutes), end: DateTime.now)
pomodoro27 = Pomodoro.create!(milestone_id: 27, start: (DateTime.now - 1225.minutes), end: DateTime.now)
pomodoro28 = Pomodoro.create!(milestone_id: 28, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro29 = Pomodoro.create!(milestone_id: 29, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro30 = Pomodoro.create!(milestone_id: 30, start: (DateTime.now - 325.minutes), end: DateTime.now)
pomodoro31 = Pomodoro.create!(milestone_id: 31, start: (DateTime.now - 1225.minutes), end: DateTime.now)
pomodoro32 = Pomodoro.create!(milestone_id: 32, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro33 = Pomodoro.create!(milestone_id: 33, start: (DateTime.now - 225.minutes), end: DateTime.now)
pomodoro34 = Pomodoro.create!(milestone_id: 34, start: (DateTime.now - 325.minutes), end: DateTime.now)
pomodoro35 = Pomodoro.create!(milestone_id: 35, start: (DateTime.now - 1225.minutes), end: DateTime.now)
pomodoro36 = Pomodoro.create!(milestone_id: 36, start: (DateTime.now - 225.minutes), end: DateTime.now)


trophy1 = Trophy.create!(name: "Wow awesome job! Have a trophy.", image:"")
