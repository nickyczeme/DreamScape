# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

# Creating modes
Mode.destroy_all
Dream.destroy_all
User.destroy_all
Booking.destroy_all

p "database clean"

fantasy = Mode.create(name: "Fantasy")

nightmares = Mode.create(name: "Nightmares")
wellness = Mode.create(name: "Wellness")
romantic = Mode.create(name: "Romantic")

barbie = User.create(email: "bzoani@itba.edu.ar", first_name: "Barbie", last_name: "Zoani", password: "123456")

p "user and modes"

# ....
#nightmares
falling = Dream.create(title: "Falling", description: "There's a rush of air on your face as you plunge over the edge into nothingness. You flail about, frantic for something to grab before you hit bottom, but there’s nothing — and no one — to save you. Terror consumes you as the bottom comes into view, and then, slam! You wake up in bed. Your heart is beating too fast, but you’re safe. It was just a dream.", intensity: 2, price: 7.5, user: barbie, mode: nightmares, address: "Calle de San Bernardo 13, Madrid")
file = URI.open('https://images.unsplash.com/photo-1473830394358-91588751b241?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjA4fHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
falling.photo.attach(io: file, filename: "#{falling.title}.png", content_type: 'image/png')

being_chased = Dream.create(title: "Being Chased", description: "I was being chased by somebody or something and running from building to building and then I kind of melted into the second dream where I had my dog Pinto in his stroller and we were meeting my family for a Christmas show. We took an elevator to the top floor of what looks like the space needle in Seattle and we sat down at the end of this crescent shaped couch. I kind of had a bad view of the play or festivities, but then an unattractive guy sat down next to me. He was black and tall and wearing a gray sweater and jeans and boots.", intensity: 5, price: 8, user: barbie, mode: nightmares, address: "Strohgasse 21A, Vienna")
file_1 = URI.open('https://images.unsplash.com/photo-1519376108558-7b6471e87264?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc3fHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
being_chased.photo.attach(io: file_1, filename: "#{being_chased.title}.png", content_type: 'image/png')

death = Dream.create(title: "Death", description: "I was being tied up along with someone else. The rope was a small snake about a foot long. I felt that it would be attached around our waists. I said, “If this small snake is attached to our waists, then we will die. [The other person] said, “That would bring about not suffering. I will become a spiritual friend with you life after life, world upon world. If we make our vows in earnest, we should be able to receive benefits.” Then I saw it crawling down a piece of silk, and I awoke.", intensity: 1, price: 1.5, user: barbie, mode: nightmares, address: "Nordendstrasse 17, Munich" )
file_2 = URI.open('https://images.unsplash.com/photo-1531257114315-24a694751517?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTYwfHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
death.photo.attach(io: file_2, filename: "#{death.title}.png", content_type: 'image/png')

feeling_lost = Dream.create(title: "Feeling Lost", description: "Again, there was a huge boulder. I was climbing it with the child of the previous [dream]. Though I thought of how easy it would be to slip, it was really not all that dangerous. I took a small rock and let it go, thinking that it would tumble down, but I saw that it was not steep and the rock came to a rest at one side without falling down. Then there was a rock [shaped] like a log at the seashore. Its skin was smooth and gave an excellent footing. I walked and played all over the top.", intensity: 3, price: 7, user: barbie, mode: nightmares, address: "Hohenlohehof 1, Vienna")
file_3 = URI.open('https://images.pexels.com/photos/3304855/pexels-photo-3304855.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
feeling_lost.photo.attach(io: file_3, filename: "#{feeling_lost.title}.png", content_type: 'image/png')

feeling_trapped = Dream.create(title: "Feeling Trapped", description: "I was walking home from a fun night out and suddently my feet where stuck to the floor and I could not move anymore.", intensity: 2, price: 5, user: barbie, mode: nightmares, address: "Calle Modesto Lafuente 4, 28010 Madrid")
file_4 = URI.open('https://images.unsplash.com/photo-1487029752779-a0c17b1f5ec9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTIzfHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
feeling_trapped.photo.attach(io: file_4, filename: "#{feeling_trapped.title}.png", content_type: 'image/png')

beeing_attacked = Dream.create(title: "Beeing Attacked", description: "The man was already staring for me for hours, I noticed that more and more people keft the subway and suddenly I was all alone with the man", intensity: 3, price: 5.5, user: barbie, mode: nightmares, address: "Paseo General Martinez Campos 37, 28010 Madrid")
file_5 = URI.open('https://images.unsplash.com/photo-1489708631777-b35c5e75d4c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI1fHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
beeing_attacked.photo.attach(io: file_5, filename: "#{beeing_attacked.title}.png", content_type: 'image/png')

waking_up_late = Dream.create(title: "Waking Up Late", description: "Tommorow is the big day, I will stand infront all of my colleagues and show them how great I am. Everything was working out until.. ", intensity: 1, price: 4, user: barbie, mode: nightmares, address: "Paseo Castellana 56, 28046 Madrid Spanien")
file_6 = URI.open('https://images.unsplash.com/photo-1446729444801-31245ddba81a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjQ1fHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
waking_up_late.photo.attach(io: file_6, filename: "#{waking_up_late.title}.png", content_type: 'image/png')

running_away = Dream.create(title: "Running away", description: "I was running a race up a hill in a circle and I kept passing people, mostly men, but they would always find a way to get ahead of me again. The course was fraught with dangerous obstacles and I kept falling away.", intensity: 3, price: 7.5, user: barbie, mode: nightmares, address: "Calle Rafael Calvo 40, 28010 Madrid")
file_7 = URI.open('https://images.unsplash.com/photo-1507574258969-0229307b4d38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkwfHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
running_away.photo.attach(io: file_7, filename: "#{running_away.title}.png", content_type: 'image/png')

corona_virus = Dream.create(title: "Corona Virus", description: "I remember having the symptoms but insisting I'm fine and trying to go about my day, only to end up getting tested and have it confirmed I have covid.", intensity: 1, price: 10, user: barbie, mode: nightmares, address: "Wienerstraße 5, 2120 Wolkersdorf im Weinviertel, Austria")
file_8 = URI.open('https://images.unsplash.com/photo-1542107362-914757b935e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTUxfHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
corona_virus.photo.attach(io: file_8, filename: "#{corona_virus.title}.png", content_type: 'image/png')

drowning = Dream.create(title: "Drowning", description: "I was at a hotel with my ex boyfriend Rory and our dogs. It was dark out and I was out by the pool with the dogs when one of the dogs, Trevor, started drowning in the pool. I screamed for help and jumped in to save him but Rory was “on an important work call” and did not come to help. I was devastated, terrified, and angry.", intensity: 3, price: 9, user: barbie, mode: nightmares, address: "Calle Julio Camba, C. Julio Camba, 28028 Madrid")
file_9 = URI.open('https://images.unsplash.com/photo-1500099817043-86d46000d58f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
drowning.photo.attach(io: file_9, filename: "#{drowning.title}.png", content_type: 'image/png')

merchant_of_bones = Dream.create(title: "Merchant Of Bones", description: " Two things come out of the mines: bodies and stone. They call him The Merchant of Bones, but he prefers to look upon himself as their saviour. In this, one of the darker fantasy short stories, if the mines fail, the city fails. If the city fails, the people will starve. He might be ruthless, his methods might be extreme, but he gets the job done. The people should thank him for it. Shouldn't they?", intensity: 4, price: 1.5, user: barbie, mode: nightmares, address: "Calle de Génova, 11, 28004 Madrid")
file_10 = URI.open('https://images.unsplash.com/photo-1512514076443-1eef59c260b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjR8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
merchant_of_bones .photo.attach(io: file_10, filename: "#{merchant_of_bones.title}.png", content_type: 'image/png')

kiara = Dream.create(title: "Kiara", description: "Kiara is three things: a whore, a psychopath and a liar. Trapped between her own two perfect visions of hell, Kiara wants to free herself from the service of others, yet her only way out of the whorehouse puts her into servitude of a greater power; a life she despises even more. When opportunity presents itself to Kiara, things change. She finds her unique skills might just offer her the key to escape her cage. ", intensity: 3, price: 1.5, user: barbie, mode: nightmares, address: "C. del Duque de Sesto, 48, 28009 Madrid")
file_11 = URI.open('https://images.unsplash.com/photo-1495772667600-911ae4f608ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODl8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
kiara.photo.attach(io: file_11, filename: "#{kiara.title}.png", content_type: 'image/png')

save_her = Dream.create(title: "Save Her", description: "A young girl, a child: alone, scared and sold every night into a world not meant for someone so innocent and delicate. He has a chance to save her, but it will cost him everything he has. Will he pay the price.", intensity: 3, price: 6.5, user: barbie, mode: nightmares, address: 'calle silva 16, Madrid')
file_12 = URI.open('https://images.unsplash.com/photo-1542887800-faca0261c9e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
save_her.photo.attach(io: file_12, filename: "#{save_her.title}.png", content_type: 'image/png')

hunted = Dream.create(title: "Hunted", description: "Alone in the woods, hounded by hunters, there seems little hope for Driev. Escape means braving the darkness, it means exposing himself to the vulnerable world beyond his place of safety. But, if he stays here too long, he might never get out alive. ", intensity: 5, price: 1.5, user: barbie, mode: nightmares, address: 'menendez pelayo 53, madrid')
file_13 = URI.open('https://images.unsplash.com/photo-1614594826236-d80b771be7ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1vbnN0ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
hunted.photo.attach(io: file_13, filename: "#{hunted.title}.png", content_type: 'image/png')

the_crucible = Dream.create(title: "The Crucible", description: "The Crucible of Steel is a game of wits. Of luck. Of Chance. Opponents face each other, one-on-one. A sword in the middle of the arena, a dagger at their side. The rules are simple, but the game is hard. Only a lone champion can emerge. Only one can survive.", intensity: 2, price: 4, user: barbie, mode: nightmares, address: 'calle espartinas 7, madrid')
file_14 = URI.open('https://images.unsplash.com/photo-1414759030024-7889df4b20f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
the_crucible.photo.attach(io: file_14, filename: "#{the_crucible.title}.png", content_type: 'image/png')

progress = Dream.create(title: "Progress", description: "He was born a fisherman and he will die a fisherman, but he is also deathly afraid of the ocean. Here, on the islands, where you can only ever be what you were born to be, how can you escape a world you can longer stand to live within? The answer, and resolution to this most unusual of fantasy short stories, is simple when you think about it: you take desperate and dangerous steps.", intensity: 4, price: 1.5, user: barbie, mode: nightmares, address: 'calle de quintana 30, madrid')
file_15 = URI.open('https://images.unsplash.com/photo-1624981631234-91fed8f45302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fG1vbnN0ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
progress.photo.attach(io: file_15, filename: "#{progress.title}.png", content_type: 'image/png')

monster = Dream.create(title: "Monster", description: " In a nation torn apart by cultists and treachery, an overthrown Prince struggles with how best to serve his people. When temptation comes for him, when a chance to liberate his kin seems within reach, will he defeat the monsters that enslave him, or will he become one of them? ", intensity: 2, price: 3.5, user: barbie, mode: nightmares, address: 'calle maria tubau 19, madrid')
file_16 = URI.open('https://images.unsplash.com/photo-1507718849053-b1de24eafb18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
monster.photo.attach(io: file_16, filename: "#{monster.title}.png", content_type: 'image/png')

ash_and_bone = Dream.create(title: "Ash and Bone", description: " Centuries pass, and as the wealth of the family slowly dries up, one is selected to enter the forest. The goal of this fantasy short story is simple: claim the reward within its heart. It’s a secret passed down from generation to generation. But one thing the chosen is not prepared for, one thing nobody knew to tell them, is that the forest is ready to fight back. ", intensity: 1, price: 1.5, user: barbie, mode: nightmares, address: 'calle de claudio coello 10, madrid')
file_17 = URI.open('https://images.unsplash.com/photo-1504903271097-d7e7c7f5f7ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80')
ash_and_bone.photo.attach(io: file_17, filename: "#{ash_and_bone.title}.png", content_type: 'image/png')

sacrifice = Dream.create(title: "Sacrifice", description: "Tradition is everything to the residents of Myah's village, but when tradition is torn away, how will they cope? Forced to let go of the old ways, the people fear the wrath of God. As tensions rise, tempers fray and desperation takes hold, in this most captivating of fantasy short stories, can Myah keep things from falling apart?", intensity: 5, price: 4.5, user: barbie, mode: nightmares, address: 'calle de velazquez 80, madrid')
file_18 = URI.open('https://images.unsplash.com/photo-1479267658415-ff274a213280?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
sacrifice.photo.attach(io: file_18, filename: "#{sacrifice.title}.png", content_type: 'image/png')

the_wraith = Dream.create(title: "The Wraith", description: "It came while he was out in the city; the monster from the mountains. The wraith slaughtered his village, killed his father and stole his future. He has nothing left. Nothing but vengeance. Leading a small party of wrathful survivors into the beast’s frozen home, it soon becomes clear that the fight isn’t against the creature they hunt, it is for their very survival. One of the fantasy short stories with a deeper meaning, will it resonate with you like it has other readers?", intensity: 3, price: 9, user: barbie, mode: nightmares, address: 'calle de sevilla 3, madrid')
file_19 = URI.open('https://images.unsplash.com/photo-1517405030045-45f7ad942106?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGRhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
the_wraith.photo.attach(io: file_19, filename: "#{the_wraith.title}.png", content_type: 'image/png')

#fantasy


the_fairytale = Dream.create(title: "The Fairytale", description: "I am lounging on wooden stairs in a fairytale-like location. There are two huge houses made of wood, one on either side of the long flight of stairs on which we sit. Near us is a patio with a huge tree. Nita is sitting next to me, and Jason tells me to look at the bird in the tree. I look into the branches and high up in the center I see a wonderful birdhouse like a beautiful old-fashioned birdcage. There are three birds, one large one that is very beautiful at the top of the birdhouse. The scene is so lovely I am near tears. I lay my head on one of the wooden steps and tell Nita I so want to live in this house.", intensity: 3, price: 7, user: barbie, mode: fantasy, address: "Plaza del Rey No. 1, 28004 Madrid")
file_36 = URI.open('https://images.unsplash.com/photo-1463109598173-3864231fade5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fGZhaXJ5dGFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
the_fairytale.photo.attach(io: file_36, filename: "#{the_fairytale.title}.png", content_type: 'image/png')

the_smallest_dragonboy = Dream.create(title: "The Smallest Dragonboy", description: "It came while he was out in the city; the monster from the mountains. The wraith slaughtered his village, killed his father and stole his future. He has nothing left. Nothing but vengeance. Leading a small party of wrathful survivors into the beast’s frozen home, it soon becomes clear that the fight isn’t against the creature they hunt, it is for their very survival. One of the fantasy short stories with a deeper meaning, will it resonate with you like it has other readers?", intensity: 3, price: 3, user: barbie, mode: fantasy, address: "Ctra. de Siles 74")
file_37 = URI.open('https://images.unsplash.com/photo-1633501637812-7e2058fddcc8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGRyYWdvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
the_smallest_dragonboy.photo.attach(io: file_37, filename: "#{the_smallest_dragonboy.title}.png", content_type: 'image/png')

the_city_born_great = Dream.create(title: "The City Born Great", description: "New York. In this inventive tale, New York City has grown old enough that it is time for it to be 'born' — but only if one reluctant midwife can keep its ancient enemies at bay.", intensity: 3, price: 7, user: barbie, mode: fantasy, address: "Rua da Rapina 36")
file_38 = URI.open('https://media.istockphoto.com/photos/amazing-island-with-grove-floating-in-the-air-picture-id623897682?b=1&k=20&m=623897682&s=170667a&w=0&h=y50tslVLAMJFSgpgDisIK-Jm5RozEAiqlutLkpQYnGo=')
the_city_born_great.photo.attach(io: file_38, filename: "#{the_city_born_great.title}.png", content_type: 'image/png')

seasons_of_glass_and_iron = Dream.create(title: "Seasons of Glass and Iron", description: "Tabitha walks, and thinks of shoes. She has been thinking about shoes for a very long time: the length of three and a half pairs, to be precise, though it’s hard to reckon in iron. Easier to reckon how many pairs are left: of the seven she set out with, three remain, strapped securely against the outside of the pack she carries, weighing it down. The seasons won’t keep still, slip past her with the landscape, so she can’t say for certain whether a year of walking wears out a sole, but it seems about right. She always means to count the steps, starting with the next pair, but it’s easy to get distracted. She thinks about shoes because she cannot move forward otherwise: each iron strap cuts, rubs, bruises, blisters, and her pain fuels their ability to cross rivers, mountains, airy breaches between cliffs. She must move forward, or the shoes will never be worn down. The shoes must be worn down.", intensity: 3, price: 9, user: barbie, mode: fantasy, address: "Puerta Nueva 86")
file_39 = URI.open('https://images.unsplash.com/photo-1464809142576-df63ca4ed7f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fHRocm9uJTIwZmFudGFzeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
seasons_of_glass_and_iron.photo.attach(io: file_39, filename: "#{seasons_of_glass_and_iron.title}.png", content_type: 'image/png')

help_me_follow_my_sister_into_the_land_of_the_dead = Dream.create(title: "Help Me Follow My Sister into the Land of the Dead", description: "", intensity: 3, price: 15, user: barbie, mode: fantasy, address: "Pascual Yunquera 60")
file_40 = URI.open('https://images.unsplash.com/photo-1560942485-b2a11cc13456?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHRocm9uJTIwZmFudGFzeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
the_wraith.photo.attach(io: file_40, filename: "#{help_me_follow_my_sister_into_the_land_of_the_dead.title}.png", content_type: 'image/png')

the_time_machine = Dream.create(title: "The Time Machine", description: "He ends up in the world of AD 802,701, in a London that has been transformed into a vast garden, and where humankind has evolved into two distinct subspecies: the above-ground Eloi and the sinister subterranean Morlocks …", intensity: 4, price: 5, user: barbie, mode: fantasy, address: "Valadouro 77")
file_41 = URI.open('https://images.unsplash.com/photo-1508924379194-91ff8ad10091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTExfHx0aW1lJTIwbWFzaGluZSUyMGZhbnRhc3l8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
the_time_machine.photo.attach(io: file_41, filename: "#{the_time_machine.title}.png", content_type: 'image/png')

the_nightfall = Dream.create(title: "The Nightfall", description: "The story is about a planet which doesn’t experience nightfall, except once in every 2,049 years, because it is normally lit by six suns. Since every human being alive will find nightfall a terrifying experience when that rare eclipse occurs, scientists worry about their chaos that will ensue when night falls …", intensity: 3, price: 7, user: barbie, mode: fantasy, address: "Antonio Vázquez 80")
file_42 = URI.open('https://media.istockphoto.com/photos/fantastic-night-forest-picture-id1267107237?b=1&k=20&m=1267107237&s=170667a&w=0&h=X7AgOe2DYsy2Ob47MuYDRI851cg1YlTkJar2duPv-o0=')
the_nightfall.photo.attach(io: file_42, filename: "#{the_nightfall.title}.png", content_type: 'image/png')

burning_chrome = Dream.create(title: "Burning Chrome", description: "the story of how they burned Chrome, a sophisticated security system with ties to organized crime.", intensity: 2, price: 7, user: barbie, mode: fantasy, address: "Plaza Mayor 44")
file_43 = URI.open('https://images.unsplash.com/photo-1519074069444-1ba4fff66d16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGJ1cm5pbmclMjBmYW50YXN5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
burning_chrome.photo.attach(io: file_43, filename: "#{burning_chrome.title}.png", content_type: 'image/png')

# wellness

coming_back = Dream.create(title: "Coming Back", description: "my girlfriend had come back to me after breaking up with me. I was extremely happy and content until I woke up and it hadn't really happened.", intensity: 4, price: 9, user: barbie, mode: wellness)
file_20 = URI.open('https://images.unsplash.com/photo-1531391959417-97fdf08b3290?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzZ8fHNpbXBsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')
coming_back.photo.attach(io: file_20, filename: "#{coming_back.title}.png", content_type: 'image/png')

being_young_again = Dream.create(title: "Being Young Again", description: "I dreamed I was sexy and slim again like I was in my 40's and flirted shamelessly with my boss which I never did in real life. He was interested which made me happy", intensity: 5, price: 5, user: barbie, mode: wellness)
file_21 = URI.open('https://images.unsplash.com/photo-1640605697310-f3ff957a83b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGhhcHB5JTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
being_young_again.photo.attach(io: file_21, filename: "#{being_young_again.title}.png", content_type: 'image/png')

puppy = Dream.create(title: "Puppy", description: "My family went to the mall to look at puppies. I was happy because we were going to get a puppy and everyone was the age we are now.", intensity: 5, price: 4.5, user: barbie, mode: wellness)
file_23 = URI.open('https://images.unsplash.com/photo-1562176546-95420556c872?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGFwcHklMjBwdXBweXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
puppy.photo.attach(io: file_23, filename: "#{puppy.title}.png", content_type: 'image/png')

beach_day = Dream.create(title: "Beach Day", description: "I had a dream I was at the beach with my family. We were playing football in the sand and everyone was so happy. It was a good time. At the end we went out to eat.", intensity: 4, price: 7.5, user: barbie, mode: wellness)
file_24 = URI.open('https://images.unsplash.com/photo-1551523577-433756fd559e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGFwcHklMjBiZWFjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
beach_day.photo.attach(io: file_24, filename: "#{beach_day.title}.png", content_type: 'image/png')

seeing_your_grandmother_once_more = Dream.create(title: "Seeing Your Grandmother Once More", description: "i was dreaming that I was visiting england and I was there with my grandmother (who has passed away) I was very happy being with her and we went to the theater and were having a wonderful time", intensity: 3, price: 5.5, user: barbie, mode: wellness)
file_25 = URI.open('https://images.unsplash.com/photo-1498673394965-85cb14905c89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGhhcHB5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
seeing_your_grandmother_once_more.photo.attach(io: file_25, filename: "#{seeing_your_grandmother_once_more.title}.png", content_type: 'image/png')

receiving_flowers_from_your_husband = Dream.create(title: "Receiving Flowers From Your Husband", description: "I dreamt that my husband surprised me with a plant. It had one exotic red flower that rose up on a long stem. I was very pleased that he had thought of me and my love of flowers.", intensity: 2, price: 3.5, user: barbie, mode: wellness)
file_26 = URI.open('https://images.unsplash.com/photo-1587546758950-bafc86850ae0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjc4fHxoYXBweXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
receiving_flowers_from_your_husband.photo.attach(io: file_26, filename: "#{receiving_flowers_from_your_husband.title}.png", content_type: 'image/png')

cottage_on_the_beach = Dream.create(title: "Cottage On The Beach", description: "I dreamt that I was living at the beach and I had left my husband and daughter and had a little cottage on the beach. In my dream I was walking down the beach and i was happy and content.", intensity: 5, price: 1.5, user: barbie, mode: wellness)
file_27 = URI.open('https://images.unsplash.com/photo-1518560051567-9e648e0142f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTk1fHxoYXBweXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
cottage_on_the_beach.photo.attach(io: file_27, filename: "#{cottage_on_the_beach.title}.png", content_type: 'image/png')

spaceship = Dream.create(title: "Spaceship", description: "I am with some people on a space ship, bringing people on a long journey….But when we arrive, a friendly, trusting guy has no position or job….What to do, we wonder….We decide he can be an usher?....I explain to him what that is, he is happy about it….", intensity: 5, price: 3, user: barbie, mode: wellness)
file_28 = URI.open('https://images.unsplash.com/photo-1560831214-d7f3921b9ec4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTJ8fGhhcHB5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
spaceship.photo.attach(io: file_28, filename: "#{spaceship.title}.png", content_type: 'image/png')

big_event = Dream.create(title: "Big Event", description: "A town is having a big public event….Two kinds of things are being prepared, like a brown wooden tray for one and a big black cylinder for the other….Everyone is getting ready, there is a happy vibe….at the end, a reward is given for a good job….some kind of treat for a kid, a small boy….He is happy….", intensity: 3, price: 9, user: barbie, mode: wellness)
file_29 = URI.open('https://images.unsplash.com/photo-1509909756405-be0199881695?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGFwcHl8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
big_event.photo.attach(io: file_29, filename: "#{big_event.title}.png", content_type: 'image/png')

meeting_your_dog_again = Dream.create(title: "Meeting Your Dog Again", description: "I had a dream about my dog who had passed away 2 years ago. We were at the park and she was running and playing like we use too when she was still with me. I was happy during the dream.", intensity: 3, price: 8, user: barbie, mode: wellness)
file_30 = URI.open('https://images.unsplash.com/photo-1534361960057-19889db9621e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGhhcHB5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
meeting_your_dog_again.photo.attach(io: file_30, filename: "#{meeting_your_dog_again.title}.png", content_type: 'image/png')


#romantic
first_date = Dream.create(title: "First Date", description: "First date, he got me champagne, and he treated me like a Princess. He was speaking thru the whole date, but I have no idea what he said. It was lovely just to hear him speaking. My heart was so happy!", intensity: 1, price: 1.5, user: barbie, mode: romantic, address: 'paseo de la castellana 57, madrid')
file_31 = URI.open('https://media.istockphoto.com/photos/summer-romance-picture-id1092543528?k=20&m=1092543528&s=612x612&w=0&h=nhX_u7Z6oJUzLL688-O_AaEY2S_nt-9W4NuXGPlL7B8=')
first_date.photo.attach(io: file_31, filename: "#{first_date.title}.png", content_type: 'image/png')

conviencing_him_to_stay_over = Dream.create(title: "Convincing Him To Stay Over", description: "I had a dream that I convinced my flirt to stay over. We were in marylebone somewhere nice. He took a bit of convincing. I love him I was happy. I can't really remember the conversation I woke up happy though.", intensity: 3, price: 4.5, user: barbie, mode: romantic, address: 'calle de orfila 7, madrid')
file_32 = URI.open('https://media.istockphoto.com/photos/summer-romance-picture-id1092543528?k=20&m=1092543528&s=612x612&w=0&h=nhX_u7Z6oJUzLL688-O_AaEY2S_nt-9W4NuXGPlL7B8=')
conviencing_him_to_stay_over.photo.attach(io: file_32, filename: "#{conviencing_him_to_stay_over.title}.png", content_type: 'image/png')
p conviencing_him_to_stay_over

married = Dream.create(title: "Married", description: "I dreamt about being married and a mom. I don't know who I was married to, and the kids weren't around, but I knew they existed because of all the toys and clothing lying around. I was really happy.", intensity: 5, price: 1.5, user: barbie, mode: romantic, address: 'calle de jorge juan 8, madrid')
file_33 = URI.open('https://media.istockphoto.com/photos/young-love-couple-celebrating-a-wedding-in-the-mountains-picture-id1095359758?k=20&m=1095359758&s=612x612&w=0&h=hO0reNOIxW-c0SIY8fNHFJnS4BZyDaqQCM1mJt37j40=')
married.photo.attach(io: file_33, filename: "#{married.title}.png", content_type: 'image/png')

first_love = Dream.create(title: "First Love", description: "My first love was there and I was being held and assured that of course we were supposed to be reunited. I felt very peaceful and loved and happy. Many other things were going on, it was a long dream, but that's the only specific thing I remember.", intensity: 5, price: 1.5, user: barbie, mode: romantic, address: 'calle doctor esquerdo 211, madrid')
file_34 = URI.open('https://media.istockphoto.com/photos/friends-or-couple-of-teens-facing-at-sunset-picture-id621380098?k=20&m=621380098&s=612x612&w=0&h=FVCo4UuPHj-LF3Y7TPh8_Y2yxEH7oIj-Qo0UzJ4xGo8=')
first_love.photo.attach(io: file_34, filename: "#{first_love.title}.png", content_type: 'image/png')

bed_with_a_women = Dream.create(title: "Bed With a Women ", description: "I am laying in a bed with a woman, we are naked, it is very sensual….We talk of past times, how in college we would take our free time to go someplace like this to make out….We are in white sheets, it is a happy vibe….", intensity: 4, price: 8, user: barbie, mode: romantic, address: 'calle de moratin 36, madrid')
file_35 = URI.open('https://media.istockphoto.com/photos/power-of-love-picture-id506008616?k=20&m=506008616&s=612x612&w=0&h=rc9qN4oGxXnIlyVXBxIhko-whvqvM80UmLv9CNDT9NE=')
bed_with_a_women.photo.attach(io: file_35, filename: "#{bed_with_a_women.title}.png", content_type: 'image/png')


Booking.create(starting_date: Date.today - 6, ending_date: Date.today + 5, user: barbie, dream: falling)


# Dream.first
# Dream.first.bookings
# Dream.first.users
# Dream.first.user
