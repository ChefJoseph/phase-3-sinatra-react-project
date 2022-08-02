puts "🌱 Seeding spices..."

# Seed your database here

user1 = User.create(name: "Elmo", handle: @ElmoDaBlood, balance: 1000, profile_pic: "https://i5.walmartimages.com/asr/8b25fa81-98a3-42f5-8913-4bda005f7795_1.f3b56f893aa261e66f655d898e731722.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF")
user2 = User.create(name: "Big Bird", handle: @BigPimpin, balance: 500, profile_pic: "https://cdn.vox-cdn.com/thumbor/5ySM42afkM_G1fk2sL-a5aHxQi0=/0x94:1494x1090/1400x1400/filters:focal(0x94:1494x1090):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45686844/big_bird_half.0.0.jpg")
user3 = User.create(name: "Oscar", handle:@DaTrashMan, balance: 10, profile_pic: "https://static.wikia.nocookie.net/muppet/images/f/f6/Oscarthegrouchy.jpg/revision/latest?cb=20160909061029")
user4 = User.create(name: "Grover", handle:@CrippinAintEasy, balance: 250, profile_pic: "https://aspenideasfestival.imgix.net/574ff348-fd31-44ec-834e-356fe265e17d/Grover_SH2018.jpg?auto=compress%2Cformat&fit=min&fm=jpg&h=290&q=80&rect=0%2C0%2C1000%2C1000&w=290")
user5 = User.create(name: "Jake", handle: @ElmoDaBlood, balance: 1000, profile_pic: "https://i5.walmartimages.com/asr/8b25fa81-98a3-42f5-8913-4bda005f7795_1.f3b56f893aa261e66f655d898e731722.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF")
user6 = User.create(name: "Bernie", handle: @BigPimpin, balance: 500, profile_pic: "https://cdn.vox-cdn.com/thumbor/5ySM42afkM_G1fk2sL-a5aHxQi0=/0x94:1494x1090/1400x1400/filters:focal(0x94:1494x1090):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45686844/big_bird_half.0.0.jpg")
user7 = User.create(name: "Greg", handle:@DaTrashMan, balance: 10, profile_pic: "https://static.wikia.nocookie.net/muppet/images/f/f6/Oscarthegrouchy.jpg/revision/latest?cb=20160909061029")
user8 = User.create(name: "Paul", handle:@CrippinAintEasy, balance: 250, profile_pic: "https://aspenideasfestival.imgix.net/574ff348-fd31-44ec-834e-356fe265e17d/Grover_SH2018.jpg?auto=compress%2Cformat&fit=min&fm=jpg&h=290&q=80&rect=0%2C0%2C1000%2C1000&w=290")
user9 = User.create(name: "Shawn", handle:@CrippinAintEasy, balance: 250, profile_pic: "https://aspenideasfestival.imgix.net/574ff348-fd31-44ec-834e-356fe265e17d/Grover_SH2018.jpg?auto=compress%2Cformat&fit=min&fm=jpg&h=290&q=80&rect=0%2C0%2C1000%2C1000&w=290")
user10 = User.create(name: "Shawn", handle:@CrippinAintEasy, balance: 250, profile_pic: "https://aspenideasfestival.imgix.net/574ff348-fd31-44ec-834e-356fe265e17d/Grover_SH2018.jpg?auto=compress%2Cformat&fit=min&fm=jpg&h=290&q=80&rect=0%2C0%2C1000%2C1000&w=290")


# Some basic Transaction
Transaction.create!(sender_id: user1.id,
                receiver_id: user3.id, 
                amount: 31.4,
                description: 'Thanks for the cake! :birthday:')
Transaction.create!(sender_id: user4.id,
                receiver_id: user5.id,
                amount: 6.9,
                description: 'This is what I owe you from the beers')
Transaction.create!(sender_id: user6.id,
                receiver_id: user1.id,
                amount: 4.2,
                description: 'Welp')
Transaction.create!(sender_id: user6.id,
                receiver_id: user2.id,
                amount: 100,
                description: 'Happy birthday buddy!')
Transaction.create!(sender_id: user5.id,
                receiver_id: user3.id,
                amount: 88.8,
                description: 'Hello :wave:')
Transaction.create!(sender_id: user2.id,
                receiver_id: user6.id,
                amount: 999,
                description: 'A Lannyster always pays his debts')
Transaction.create!(sender_id: user5.id,
                receiver_id: user3.id,
                amount: 314.15,
                description: 'Valar Morghulis')
Transaction.create!(sender_id: user2.id,
                receiver_id: user4.id,
                amount: 72.59,
                description: 'I am not in danger, Skyler. I am the danger.')

puts "✅ Done seeding!"
